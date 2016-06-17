require 'rails_helper'

describe Membership do
  describe "associations" do
    describe Membership do
      it { should belong_to(:group) }
      it { should belong_to(:member).class_name("User") }
    end
  end
end
