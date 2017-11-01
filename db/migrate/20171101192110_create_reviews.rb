class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
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
