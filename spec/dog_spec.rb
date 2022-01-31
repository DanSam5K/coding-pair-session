require 'rspec'
require_relative '../dog'

describe Dog do 
  describe '#bark' do
    it 'return a string "Woof!" ' do
        dog = Dog.new
        expect(dog.bark).to eql('Woof!')
    end
  end

  describe "#hungry?" do
   it 'returns true if hunger_level is more than 5' do
     hungry_dog = Dog.new(hunger_level: 7)
     expect(hungry_dog.hungry?).to eql(true)
   end

   it 'returns true if hunger_level is more than 5 or less' do
    hungry_dog = Dog.new(hunger_level: 5)
    expect(hungry_dog.hungry?).to eql(false)
   end

   xit 'returns string not number' do
    hungry_dog = Dog.new(hunger_level: 5)
    expect(hungry_dog.hungry?).to_not eql Numeric
   end
  end
end