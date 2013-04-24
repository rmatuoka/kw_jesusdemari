class AddSubcategorieIdToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :subcategorie_id, :integer
  end

  def self.down
    remove_column :products, :subcategorie_id
  end
end
