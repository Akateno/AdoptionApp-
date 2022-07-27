class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :age, :trait, :image
end
