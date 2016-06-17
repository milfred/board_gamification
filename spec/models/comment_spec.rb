require 'rails_helper'

describe Comment do
    describe "associations" do
      it { should have_db_column(:body) }
      it { should have_db_column(:commenter_id) }
      it { should have_db_column(:review_id) }
      it { should belong_to(:review) }
      it { should belong_to(:commenter).class_name("User") }
    end
  end
