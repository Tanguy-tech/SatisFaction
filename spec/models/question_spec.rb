require 'rails_helper'

RSpec.describe Question, type: :model do

    before(:each) do 
        @question = FactoryBot.build(:random_question)    
    end

    it "has a valid factory" do
        # teste toujours tes factories pour voir si elles sont valides
        expect(build(:random_question)).to be_valid
    end

end