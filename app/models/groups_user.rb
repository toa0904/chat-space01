class GroupsUser < ApplicationRecord
  belongs_to :users
  belongs_to :groups
end
