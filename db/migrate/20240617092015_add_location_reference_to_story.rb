class AddLocationReferenceToStory < ActiveRecord::Migration[7.1]
  def change
    add_reference :stories, :location, foreign_key: true

    Story.reset_column_information
    Story.find_each do |story|
      story.set_location
      story.save
    end

    change_column_null :stories, :location_id, false
  end
end
