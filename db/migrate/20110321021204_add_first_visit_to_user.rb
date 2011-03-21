class AddFirstVisitToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :first_visit, :boolean, :default => true
  end

  def self.down
    remove_column :users, :first_visit
  end
end
