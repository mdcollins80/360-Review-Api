class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :qowp, :prob, :imef, :opfb, :team, :comm, :efco, :reli, :mgmt, :strengths, :improves, :openresp
end
