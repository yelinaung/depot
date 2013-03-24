class Product < ActiveRecord::Base
    attr_accessible :description, :image_url, :price, :title

    # check all the fields are not blank
    validates :title, :description, :image_url, :presence => true

    # check the price is positive number
    validates :price, :numericality => {:greater_than_equal_to => 0.01 }

    # check the title is unique
    validates :title, :uniqueness => true

    # check the image url
    validates :image_url, :format => {
        :with => %r{\.(gif|jpg|jpeg|png)$}i,
        :message => 'must be a URL for GIF, JPG or PNG image.'
    }
end
