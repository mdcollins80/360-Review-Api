# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :subordinates, class_name: "User", foreign_key: "manager_id"
  has_many :examples
  has_many :reviews

  belongs_to :manager, class_name: "User"
end
