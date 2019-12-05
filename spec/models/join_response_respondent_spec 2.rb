require 'rails_helper'

RSpec.describe JoinResponseRespondent, type: :model do

    before(:each) do 
        @jrr = FactoryBot.build(:random_jrr)    
    end

    it "has a valid factory" do
        # teste toujours tes factories pour voir si elles sont valides
        expect(build(:random_jrr)).to be_valid
    end

    context "associations" do

        describe "responses" do
            it { expect(@jrr).to belong_to(:response) }
          end
    
    end
end  
