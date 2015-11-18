class Post < ActiveRecord::Base
  #destroy comments if post is deleted from the db as well
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
end
