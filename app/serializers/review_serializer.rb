# frozen_string_literal: true
class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :reviewee_given_name, :reviewee_surname,
             :reviewee_business_unit, :qowp, :prob, :imef, :opfb, :team, :comm,
             :efco, :reli, :mgmt, :strengths, :improves, :openresp, :was_saved
end
