class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :breed
      t.string :img_url
      t.string :status
      t.references :rescue, index: true, foreign_key: true
      t.timestamps
    end
  end
end
