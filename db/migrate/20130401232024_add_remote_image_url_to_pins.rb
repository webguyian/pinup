class AddRemoteImageUrlToPins < ActiveRecord::Migration
  def change
    add_column :pins, :remote_image_url, :string
  end
end
