require 'rails_helper'

describe User do
  describe "db columns" do
    it { should have_db_column(:username) }
    it { should have_db_column(:email) }
    it { should have_db_column(:password_digest) }
    it { should have_db_column(:personal_info) }
  end

  describe "associations" do
    it { should have_many(:created_groups) }
    it { should have_many(:memberships) }
    it { should have_many(:comments) }
    it { should have_many(:reviews) }
    it { should have_many(:ownerships) }
    it { should have_many(:owned_games) }
    it { should have_many(:groups) }
  end
end
