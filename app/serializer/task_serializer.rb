class TaskSerializer < ActiveModel::Serializer
  attributes :id, :priority, :description, :done, :list_id
end
