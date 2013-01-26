class TaskSerializer < ActiveModel::Serializer
  has_one :list

  attributes :id, :name, :is_done, :minutes_estimated_to_complete
end
