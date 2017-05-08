class User < ApplicationRecord
	has_many :messages
	validates :username, presence: true    # Replace FILL_IN with the right code.
  	validates :password, presence: true    # Replace FILL_IN with the right code.
end
