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
          it "should return the value" do
            question_2 = build(:question, number: "12")
            expect(question_2.number).to eq("12")
            end
        end

        describe "#content" do
    
          it "should return a text" do
            expect(@question.content).to be_a(Text)
            end
          it "should return the content" do
            question_3 = build(:question, content: "blabla test de content for questions")
            expect(question_3.content).to eq("blabla test de content for questions")
            end
        end
    
    end

end