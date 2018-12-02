class ListSerializer < ActiveModel::Serializer
  attributes :id, :kind, :created_at, :done, :time_completed, :created_at, :user_id
  has_many :tasks
end
