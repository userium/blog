class Post < ActiveRecord::Base
	validates :post, presence: true
end
