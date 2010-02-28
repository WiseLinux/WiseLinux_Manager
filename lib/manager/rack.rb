require 'mongodb'

class Rack
  include MongoMapper::Document

  key :number, String, :required => true
  
  def self.rack_add
    number = ask("Enter the number of the rack:  ", Integer) { |q| q.in = 0..500 }
    self.create!(:number = number)
  end
  
end
