class UserSerializer < ActiveModel::Serializer
  attributes :email
  has_many :lists
  has_many :tasks, through: :lists
end
