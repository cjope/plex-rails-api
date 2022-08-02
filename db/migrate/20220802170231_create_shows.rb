class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.string :name
      t.integer :site_id

      t.timestamps
    end
  end
end
