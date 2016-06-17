require 'rails_helper'

describe Membership do
  describe "db columns" do
    it { should have_db_column(:member_id) }
    it { should have_db_column(:group_id) }
  end

  describe "associations" do
    it { should belong_to(:group) }
    it { should belong_to(:member).class_name("User") }
  end
end
