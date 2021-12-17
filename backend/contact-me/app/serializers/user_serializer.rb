class UserSerializer < ActiveModel::Serializer
    attributes :firstName, :lastName, :email, :zip, :state
end
  