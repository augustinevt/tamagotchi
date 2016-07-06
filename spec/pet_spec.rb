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
        my_other_pet = Pet.new('Aragog')
        my_other_pet.update((Time.now() + 2*60))
        expect(my_other_pet.feed()).to eq(9)
    end
    
    it('check if alive conditional return death string when vitals are zero') do
        my_pet = Pet.new('Fluffy')
        my_pet.update((Time.now() + 30*60))
        expect(my_pet.feed()).to eq('your pet is dead, long live your pet')

    end
  end


  describe '#go_to_bed' do
    it('check if alive and if so increase food level by 1') do
        my_pet = Pet.new('Fluffy')
        expect(my_pet.go_to_bed()).to eq(11)
    end
  end

  describe '#play' do
    it('check if alive and if so increase food level by 1') do
        my_pet = Pet.new('Fluffy')
        expect(my_pet.play()).to eq(11)
    end
  end


  describe '#update' do
    it('compare time objects to detract form vitals') do
        my_pet = Pet.new('Fluffy')
        my_pet.update((Time.now() + 2*60))
        expect(my_pet.food()[:level]).to eq(8)
        expect(my_pet.rest()[:level]).to eq(8)
        expect(my_pet.activity()[:level]).to eq(8)
    end
    it('compare time objects to detract form vitals') do
        my_pet = Pet.new('Fluffy')
        my_pet.update((Time.now() + 9*60))
        expect(my_pet.food()[:level]).to eq(1)
        expect(my_pet.rest()[:level]).to eq(1)
        expect(my_pet.activity()[:level]).to eq(1)
    end
  end
end


# @food[:level] += 1 - (@food[:last_time] - Time.now() / 60)
