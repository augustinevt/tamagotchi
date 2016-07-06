require('rspec')
require('pet')

describe "Pet" do
  describe '#initailize' do
    it('sets all defaults vitals') do
      my_pet = Pet.new('Fluffy')
      expect(my_pet.name()).to eq('Fluffy')
      expect(my_pet.food()[:level]).to eq(10)
      expect(my_pet.rest()[:level]).to eq(10)
      expect(my_pet.activity()[:level]).to eq(10)
    end
  end
end
