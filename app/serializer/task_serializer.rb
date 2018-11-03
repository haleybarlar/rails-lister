class TaskSerializer < ActiveModel::Serializer
  attributes :id, :priority, :description
end
