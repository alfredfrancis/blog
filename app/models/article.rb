class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
                    length: { minimum: 5 }
    validates_uniqueness_of :title

scope :search, ->(query) { where("title like ?", "%#{query}%") }

end
