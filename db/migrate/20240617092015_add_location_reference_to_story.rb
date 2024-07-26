class AddLocationReferenceToStory < ActiveRecord::Migration[7.1]
  def change
    add_reference :stories, :location, null: false, foreign_key: true
  end
end
