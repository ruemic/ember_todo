class ListSerializer < ActiveModel::Serializer
  has_many :tasks

  attributes :id, :name
end
