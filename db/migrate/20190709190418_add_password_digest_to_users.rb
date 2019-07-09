class AddPasswordDigestToUsers < ActiveRecord::Migration[5.2]
  def change
    #format : add_column, :table, :column name, :data_type
    add_column :users, :password_digest, :string
  end
end
