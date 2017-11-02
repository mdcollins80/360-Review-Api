# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :reviews

  # belongs_to :manager, class_name: "User"
end
