class News < ApplicationRecord
	belongs_to :user, :optional => true
end
