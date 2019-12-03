require 'rails_helper'

RSpec.describe User, type: :model do

    before(:each) do 
        @user = FactoryBot.build(:random_user)    
    end
    
    it "has a valid factory" do
        # teste toujours tes factories pour voir si elles sont valides
        expect(build(:random_user)).to be_valid
    end
    


    context "validation" do

        it "is valid with valid attributes" do
          expect(@user).to be_a(User)
        end
    
        describe "#email" do
          it { expect(@user).to validate_presence_of(:email) }
        end
    
        describe "#username" do
          it { expect(@user).to validate_length_of(:username).is_at_least(3) }
        end
    end



    context "associations" do

        describe "surveys" do
          it { expect(@user).to have_many(:surveys) }
        end
    
    end



    context "public instance methods" do

        describe "#username" do
    
          it "should return a string" do
            expect(@user.username).to be_a(String)
            end
          it "should return the username" do
            user_2 = build(:user, username: "Jean-Michel", email: "Jean-Michel@test.com")
            expect(user_2.username).to eq("Jean-Michel")
            expect(user_2.email).to eq("Jean-Michel@test.com")
            end
        end
    
    end
    
end