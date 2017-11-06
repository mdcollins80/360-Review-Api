# frozen_string_literal: true
class Review < ApplicationRecord
  belongs_to :user
  belongs_to :reviewee, :class_name => 'User'
  # validates :reviewee_given_name, :user, presence: true
end
