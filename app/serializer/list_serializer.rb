class ListSerializer < ActiveModel::Serializer
  attributes :id, :kind
  has_many :tasks
end
