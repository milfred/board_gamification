require 'rails_helper'

describe User do
  let(:momo) { User.new(username: "momo", email: "momo@momo.org", password: "password", personal_info: "Ahhh, hey JQuery, could you please give me some information in JSON format?") }
  let(:monopoly) { Game.new(name: "Monopoly: DBC Edition", description: "No one ever makes any money", number_of_players: "about 63, but the next cohort is going to be huge!", image_url: "http://devbootcamp.com/assets/img/locations/chi/matt-baker.jpg")}

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
  end

  describe "user associations" do
    pending
  end
end
