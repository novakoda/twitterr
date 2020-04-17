class AddUserIdToTweetts < ActiveRecord::Migration[5.2]
  def change
    add_column :tweetts, :user_id, :integer
  end
end
