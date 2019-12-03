require 'rails_helper'

RSpec.describe Survey, type: :model do

    before(:each) do 
        @survey = FactoryBot.build(:random_survey)    
    end

    it "has a valid factory" do
        # teste toujours tes factories pour voir si elles sont valides
        expect(build(:random_survey)).to be_valid
    end


    context "validation" do

        it "is valid with valid attributes" do
          expect(@survey).to be_a(Survey)
        end
    
        describe "#title" do
          it { expect(@survey).to validate_presence_of(:title) }
        end
    
    end


    context "associations" do

        describe "users" do
          it { expect(@survey).to belong_to(:user) }
        end
    
    end


    context "public instance methods" do

        describe "#title" do
    
          it "should return a string" do
            expect(@survey.title).to be_a(String)
            end
          it "should return the title" do
            survey_2 = build(:survey, title: "L'abricot de margot")
            expect(survey_2.title).to eq("L'abricot de margot")
            end
        end
    
    end

end