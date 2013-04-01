class AddActiveAndPublishedToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :active, :boolean
    add_column :products, :published, :boolean
  end

  def self.down
    remove_column :products, :published
    remove_column :products, :active
  end
end
