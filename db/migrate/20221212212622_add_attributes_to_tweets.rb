class AddAttributesToTweets < ActiveRecord::Migration[6.1]
  def change
    add_column :tweets, :message, :string
    add_column :tweets, :timestamps, :datetime
    add_belongs_to :tweets, :user
  end
end
