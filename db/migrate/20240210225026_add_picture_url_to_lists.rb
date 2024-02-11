class AddPictureUrlToLists < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :picture_url, :string
  end
end
