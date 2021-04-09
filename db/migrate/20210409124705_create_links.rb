class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title
      t.text :describe
      t.string :source

      t.timestamps
    end
  end
end
