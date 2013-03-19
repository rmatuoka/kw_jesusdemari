class CreateBanners < ActiveRecord::Migration
  def self.up
    create_table :banners do |t|
      t.string :title
      t.string :link
      t.integer :section_id
      t.boolean :published
      t.boolean :active
      t.timestamps
    end
  end

  def self.down
    drop_table :banners
  end
end
