# frozen_string_literal: true
class Review < ApplicationRecord
  belongs_to :user
  validates :reviewee_given_name, :user, presence: true
end
