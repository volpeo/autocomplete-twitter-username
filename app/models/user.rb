class User < ActiveRecord::Base
	attr_accessible :name, :provider, :uid, :nickname, :token, :secret

	def self.create_with_omniauth(auth)
		create! do |user|
			user.provider = auth["provider"]
			user.uid = auth["uid"]
			user.name = auth["info"]["name"]
			user.nickname = auth["info"]["nickname"]
			user.token = auth["credentials"]["token"]
			user.secret = auth["credentials"]["secret"]
		end
	end

	def configure
		Twitter.configure do |config|
			config.oauth_token = self.token
			config.oauth_token_secret = self.secret
		end
		return self
	end

	def get_friends
		self.configure

		friend_ids = Twitter.friend_ids(self.nickname).ids

		i = friend_ids.length / 100
		i += 1 if (friend_ids.length % 100 > 0)

		friends = []
		i.times do |i|
			start = i * 100
			current_batch = friend_ids.slice( i * 100, 100 )
			for user in Twitter.users(current_batch) do
				friends << { label: user.name, value: user.screen_name, img: "https://api.twitter.com/1/users/profile_image/" + user.screen_name }
			end
		end
		return friends
	end
end
