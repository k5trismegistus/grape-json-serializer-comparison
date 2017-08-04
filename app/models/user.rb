class User < ApplicationRecord
  has_many :articles
  has_many :bookmarks
end
