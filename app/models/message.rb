class Message < ApplicationRecord
  belongs_to :user
  has_many :groups, through: :groups_users
end
