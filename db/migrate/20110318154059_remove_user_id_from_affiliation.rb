class RemoveUserIdFromAffiliation < ActiveRecord::Migration
  def self.up
    remove_column :affiliations, :user_id
  end

  def self.down
    add_column :affiliations, :user_id, :integer
  end
end
