class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :summary
      t.text :body
      t.string :link
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
