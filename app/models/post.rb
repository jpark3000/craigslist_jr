require 'securerandom'

class Post < ActiveRecord::Base
  # Remember to create a migration!
  before_save do |post|
  	post.key = SecureRandom.hex(4)
  end

  belongs_to :category
end
