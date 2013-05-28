class AddUserTypeToImpressionsTable < ActiveRecord::Migration
  def self.up
    add_column :impressions, :user_type, :string
    add_index :impressions, [:user_id, :user_type]
  end

  def self.down
    remove_column :impressions, :user_type
  end
end
