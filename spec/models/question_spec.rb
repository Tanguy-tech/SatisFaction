require 'rails_helper'

RSpec.describe Question, type: :model do

    before(:each) do 
        @question = FactoryBot.build(:random_question)    
    end

    it "has a valid factory" do
        # teste toujours tes factories pour voir si elles sont valides
        expect(build(:random_question)).to be_valid
    end


    context "validation" do

        it "is valid with valid attributes" do
          expect(@question).to be_a(Question)
        end
    
        describe "#number" do
          it { expect(@question).to validate_presence_of(:number) }
        end

        describe "#content" do
          it { expect(@question).to validate_presence_of(:content) }
        end
    
    end



    context "associations" do
 
        describe "surveys" do
          it { expect(@question).to belong_to(:survey) }
        end
    
    end


    
    context "public instance methods" do

        describe "#number" do
    
          it "should return a integer" do
            expect(@question.number).to be_a(Integer)
            end
          it "should return the number" do
            question_2 = build(:question, number: 27)
            expect(question_2.number).to eq(27)
            end
        end

        describe "#content" do
    
          it "should return a string" do
            expect(@question.content).to be_a(String)
            end
          it "should return the content" do
            question_2 = build(:question, content: "test content de question")
            expect(question_2.content).to eq("test content de question")
            end
        end
    
    end

end