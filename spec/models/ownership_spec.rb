require 'rails_helper'

describe Ownership do
  describe "db columns" do
    it { should have_db_column(:owner_id) }
    it { should have_db_column(:game_id) }
  end

  describe "associations" do
    it { should belong_to(:game) }
    it { should belong_to(:owner).class_name("User") }
  end
end
