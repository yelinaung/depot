class Product < ActiveRecord::Base
    attr_accessible :description, :image_url, :price, :title
    validates :title, :description, :image_url, :presence => true
    validates :price, :numericality => {:greater_than_equal_to => 0.01 }
    validates :title, :uniqueness => true
end
