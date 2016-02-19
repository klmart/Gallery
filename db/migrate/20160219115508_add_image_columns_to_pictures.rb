class AddImageColumnsToPictures < ActiveRecord::Migration
  def change
    def up
      add_attachment :pictures, :image
    end

    def down
      remove_attachment :pictures, :image
    end
  end
end
