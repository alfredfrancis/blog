class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
                    length: { minimum: 5 }
                    
  def self.search(query)
    where("title like ?", "%#{query}%") 
  end
end
