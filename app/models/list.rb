class List < ApplicationRecord
  has_many :tasks
  belongs_to :user

    self.per_page = 1
end
