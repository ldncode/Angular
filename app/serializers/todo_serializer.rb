class TodoSerializer < ActiveModel::Serializer
  attributes :id, :text, :isCompleted
end
