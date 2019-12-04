require 'rails_helper'

RSpec.describe Respondent, type: :model do

    before(:each) do 
        @respondent = FactoryBot.build(:random_respondent)    
    end

    it "has a valid factory" do
        # teste toujours tes factories pour voir si elles sont valides
        expect(build(:random_respondent)).to be_valid
    end
end 