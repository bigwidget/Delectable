class RemoveWantsToBeContributorFromUser < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.remove :wants_to_be_contributor
    end
  end

  def self.down
    change_table :users do |t|
      t.binary :wants_to_be_contributor
    end
  end
end
