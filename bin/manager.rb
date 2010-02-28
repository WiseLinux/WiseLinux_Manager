#!/usr/bin/ruby

require 'rubygems'
require 'mongo_mapper'
require 'highline/import'

MongoMapper.database = "cluster"

$:.unshift(File.dirname(__FILE__) + '../lib')

choose do |menu|
  menu.prompt = "What would you like to do?"
  
  menu.choice("Add a Rack") { Rack.add_rack }
  menu.choice("List Racks") { puts Rack.all }
end