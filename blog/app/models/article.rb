association to achieve this. Modify the Article model, app/models/article.rb, as follows:
class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end

