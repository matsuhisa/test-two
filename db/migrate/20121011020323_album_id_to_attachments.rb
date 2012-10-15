class AlbumIdToAttachments < ActiveRecord::Migration
  def change
    add_column :attachments, :plan_album_id,  :integer
    add_column :attachments, :place_album_id, :integer
  end
end
