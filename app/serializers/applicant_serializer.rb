class ApplicantSerializer < ActiveModel::Serializer
  attributes :id, :name, :dog_id, :job, :city, :pets_owned, :image

   belongs_to :dog
end
