class AddTargetToBanner < ActiveRecord::Migration
  def self.up
    add_column :banners, :target, :string
  end

  def self.down
    remove_column :banners, :target
  end
end
