require 'rails_helper'

RSpec.describe Response, type: :model do

    before(:each) do 
        @response = FactoryBot.build(:random_response)    
    end

    it "has a valid factory" do
        # teste toujours tes factories pour voir si elles sont valides
        expect(build(:random_response)).to be_valid
    end



    context "validation" do

        it "is valid with valid attributes" do
          expect(@response).to be_a(Response)
        end
    
        describe "#value" do
          it { expect(@response).to validate_presence_of(:value) }
        end
    
    end



    context "associations" do

        describe "questions" do
          it { expect(@response).to belong_to(:question) }
        end
    
    end


    
    context "public instance methods" do

        describe "#value" do
    
          it "should return a integer" do
            expect(@sresponse.value).to be_a(Integer)
            end
          it "should return the value" do
            response_2 = build(:response, value: "3")
            expect(response_2.value).to eq("3")
            end
        end
    
    end

end