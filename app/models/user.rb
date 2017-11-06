# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :reviews
  has_many :reviewees, :through => :reviews, :source => 'reviewee'
  # has_many :inverse_reviews, class_name: :review, foreign_key: :reviewee_id
  # has_many :reviewers, class_name: :user, through: :inverse_reviews, source: :user
end
