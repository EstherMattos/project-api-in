class UserSerializer < ActiveModel::Serializer
  attributes :id, :adm, :name, :email, :password, :kind
end
