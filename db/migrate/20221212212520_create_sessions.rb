class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.string :token
      t.string :user_id
      t.datetime :timestamps
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
