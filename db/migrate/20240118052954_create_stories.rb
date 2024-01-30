class CreateStories < ActiveRecord::Migration[7.1]
  def change
    create_table :stories do |t|
      t.string :address
      t.text :body

      t.timestamps
    end
  end
end
