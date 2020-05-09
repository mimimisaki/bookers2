class Book < ApplicationRecord
	with_options presence: true, length: { maximum: 199 } do
		validates :title
		validates :body
	end

	belongs_to :user
end
