class Imageupload < ActiveRecord::Migration
  def change
    create_table :imageuploads do |t|
      t.string :description
      t.attachment :uploadedimage
      
      t.timestamps
    end
  end
end
