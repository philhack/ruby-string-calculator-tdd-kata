require_relative '../playground'
require('rspec')


describe Playground do
  context 'when there are no children' do
    let(:playground) { Playground.new(0) }

    # could do this instead and use an instance variable, but instead, we can replace this with a 'let'
    # before do
    #   @playground = Playground.new(0)
    # end

    it 'is quite boring place' do
      mood  = @playground.mood
      expect(mood).to eq('boring')
    end

    it 'is empty' do
      expect(@playground).to be_empty
    end
  end
end

# we use describe to describe what we test
# we use context to bundle examples with common context and setup
# To Execute tests: bundle exec rspec
#
# Rspec
# The create the .rspec file and the spec_helper.rb
# ```
# bundle exec rspec --init
# ```

# to run the rspec tests
# ```
# bundle exec rspec
# ```


