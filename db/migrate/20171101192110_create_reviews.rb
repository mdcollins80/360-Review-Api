# frozen_string_literal: true
class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :reviewee_given_name
      t.string :reviewee_surname
      t.string :reviewee_business_unit
      t.integer :qowp
      t.integer :prob
      t.integer :imef
      t.integer :opfb
      t.integer :team
      t.integer :comm
      t.integer :efco
      t.integer :reli
      t.integer :mgmt
      t.string :strengths
      t.string :improves
      t.string :openresp
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
