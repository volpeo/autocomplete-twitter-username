class AddFuckingFieldsToUser < ActiveRecord::Migration
	def up
		add_column :users, :nickname, :string
		add_column :users, :token, :string
		add_column :users, :secret, :string
	end
	def down
		add_column :users, :nickname
		add_column :users, :token
		add_column :users, :secret
	end

end
