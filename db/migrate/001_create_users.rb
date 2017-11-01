# frozen_string_literal: true
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :token, null: false, index: { unique: true }
      t.string :password_digest, null: false
      t.string :business_unit
      t.string :given_name
      t.string :surname
      t.references :manager

      t.timestamps null: false
    end
  end
end
