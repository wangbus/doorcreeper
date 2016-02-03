class AddUserIdToOauthAccessGrants < ActiveRecord::Migration
  def change
    remove_column :oauth_access_grants, :resource_owner_id
    change_table :oauth_access_grants do |t|
      t.references :user, foreign_key: true, null: false
    end
  end
end
