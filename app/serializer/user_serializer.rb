class UserSerializer < ActiveModel::Serializer
  attributes :email, :id, :lists_completed, :tasks_completed, :dates_done, :name, :username
  has_many :lists
end
