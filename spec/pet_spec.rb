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
  describe '#is_alive?' do
    it('checks vitals for a value greater than 0') do
      my_pet = Pet.new('Fluffy')
      expect(my_pet.is_alive?()).to eq(true)
    end
  end
  describe '#feed' do
    it('check if alive and if so increase food level by 1') do
        my_pet = Pet.new('Fluffy')
        expect(my_pet.feed()).to eq(11)
    end
  end
  describe '#update' do
    it('compare time objects to detract form vitals') do
        my_pet = Pet.new('Fluffy')
        my_pet.update((Time.now() + 2*60))
        expect(my_pet.food()[:level]).to eq(7)
        expect(my_pet.rest()[:level]).to eq(7)
        expect(my_pet.activity()[:level]).to eq(7)
    end
  end
end


# @food[:level] += 1 - (@food[:last_time] - Time.now() / 60)
