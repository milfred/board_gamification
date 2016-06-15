class Categorization < ActiveRecord::Base
  belongs_to :game, :category
end
