class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
					  length: { minimum: 5 } # the title just can contains 5 characters.
end
