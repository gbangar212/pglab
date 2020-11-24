class Profile < ApplicationRecord
  belongs_to :user
  validates :roll, :name, :entry, :spec, presence: true
end
