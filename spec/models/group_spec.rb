require 'rails_helper'

describe Group do
  describe "db columns" do
    it { should have_db_column(:name) }
    it { should have_db_column(:creator_id) }
  end

  describe "associations" do
    it { should have_many(:memberships) }
    it { should have_many(:members) }
    it { should belong_to(:creator).class_name("User") }
  end
end
