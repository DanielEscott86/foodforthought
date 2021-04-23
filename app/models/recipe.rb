class Recipe < ApplicationRecord
  belongs_to :user
  # Allows recipes to be commented on
  acts_as_commontable
end
