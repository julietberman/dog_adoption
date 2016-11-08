class CreateRescues < ActiveRecord::Migration[5.0]
  def change
    create_table :rescues do |t|
      t.string :name
      t.string :img_url
      t.string :website
      t.string :state
      t.timestamps
    end
  end
end
