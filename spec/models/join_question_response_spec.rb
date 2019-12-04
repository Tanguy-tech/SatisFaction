require 'rails_helper'

RSpec.describe JoinQuestionResponse, type: :model do

    before(:each) do 
        @jqr = FactoryBot.build(:random_jqr)    
    end

    it "has a valid factory" do
        # teste toujours tes factories pour voir si elles sont valides
        expect(build(:random_jqr)).to be_valid
    end

    context "associations" do
 
        describe "questions" do
          it { expect(@jqr).to belong_to(:question) }
        end

        describe "responses" do
            it { expect(@jqr).to belong_to(:response) }
          end
    
    end
end 