class AddPageToSection < ActiveRecord::Migration
  def self.up
    add_column :sections, :page, :integer
  end

  def self.down
    remove_column :sections, :page
  end
end
