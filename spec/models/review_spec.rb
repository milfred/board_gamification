require 'rails_helper'

describe Review do
  describe "db columns" do
    it { should have_db_column(:rating) }
    it { should have_db_column(:title) }
    it { should have_db_column(:body) }
    it { should have_db_column(:reviewer_id) }
    it { should have_db_column(:game_id) }
  end

  describe "associations" do
    it { should belong_to(:game) }
    it { should belong_to(:reviewer).class_name("User") }
  end
end
