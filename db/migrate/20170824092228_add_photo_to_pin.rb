class AddPhotoToPin < ActiveRecord::Migration
  def change
    add_column :pins, :photo, :string
  end
end
