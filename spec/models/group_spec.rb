require 'rails_helper'

describe Group do
  let(:group1) { Group.new(name: "Group 1", description: "This is group 1", creator_id: 1)}
  let(:group2) { Group.new(name: "Group 2", description: "This is group 2", creator_id: 1)}

  describe "group attributes" do
    it "returns it's name" do
      expect(group1.name).to eq "Group 1"
    end
    it "returns it's email" do
      expect(group1.description).to eq "This is group 1"
    end
    it "returns it's creator id" do
      expect(group1.creator_id).to eq 1
    end
  end

  describe "associations" do

    describe Group do
      it { should have_many(:memberships) }
      it { should have_many(:members) }
      it { should belong_to(:creator).class_name("User") }
    end
  end
end
