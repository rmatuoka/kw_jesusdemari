class CreateNotices < ActiveRecord::Migration
  def self.up
    create_table :notices do |t|
      t.string :title
      t.string :summary
      t.text :body
      t.boolean :published
      t.boolean :active
      t.timestamps
    end
  end

  def self.down
    drop_table :notices
  end
end
