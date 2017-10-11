class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, comment: '用户名'
      t.string :password_digest, comment: '密码密文'
      t.integer :status, default: 0, null: false, comment: '帐号状态'
      t.datetime :deleted_at

      t.timestamps
    end
      add_index :users, :status
      add_index :users, :deleted_at
  end
end
