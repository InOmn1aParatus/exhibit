require './lib/exhibit'
require './lib/patron'
require './lib/museum'

RSpec.describe Museum do
  context 'instantiation' do
    it 'exists' do
      dmns = Museum.new("Denver Museum of Nature and Science")
      expect(dmns).to be_a(Museum)
    end

    it 'has attributes' do
      dmns = Museum.new( "Denver Museum of Nature and Science")
      expect(dmns.name).to eq("Denver Museum of Nature and Science")
    end
    
    it 'starts with no exhibits' do
      dmns = Museum.new( "Denver Museum of Nature and Science")
      expect(dmns.exhibits).to eq([])
    end
  end
end