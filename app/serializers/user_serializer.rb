# frozen_string_literal: true
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :given_name, :surname, :business_unit,
             :admin
end
