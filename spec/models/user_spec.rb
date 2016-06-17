require 'rails_helper'

describe User do
  let(:momo) { User.new(id: 1, username: "momo", email: "momo@momo.org", password: "password", personal_info: "Ahhh, hey JQuery, could you please give me some information in JSON format?") }

  describe "user attributes" do
    it "returns it's username" do
      expect(momo.username).to eq "momo"
    end
    it "returns it's email" do
      expect(momo.email).to eq "momo@momo.org"
    end
    it "returns it's personal information" do
      expect(momo.personal_info).to eq "Ahhh, hey JQuery, could you please give me some information in JSON format?"
    end
    it "returns it's user id" do
      expect(momo.id).to eq 1
    end
  end

  describe "associations" do

    describe User do
      it { should have_many(:created_groups) }
      it { should have_many(:memberships) }
      it { should have_many(:comments) }
      it { should have_many(:reviews) }
      it { should have_many(:ownerships) }
      it { should have_many(:owned_games) }
    end
  end


end
