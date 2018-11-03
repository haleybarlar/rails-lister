class UserSerializer < ActiveModel::Serializer
  attributes :email, :id
  has_many :lists
end
