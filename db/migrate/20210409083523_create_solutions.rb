class CreateSolutions < ActiveRecord::Migration[6.1]
  def change
    create_table :solutions do |t|
      t.belongs_to :bug, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
