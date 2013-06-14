class AddStateAndCityToBudget < ActiveRecord::Migration
  def self.up
    add_column :budgets, :state, :string
    add_column :budgets, :city, :string
  end

  def self.down
    remove_column :budgets, :city
    remove_column :budgets, :state
  end
end
