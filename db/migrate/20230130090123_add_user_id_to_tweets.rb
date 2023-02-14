class AddUserIdToTweets < ActiveRecord::Migration[6.1]
  def change
    add_column :logistics, :user_id, :integer
  end
end
