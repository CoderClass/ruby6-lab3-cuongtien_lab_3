class Product < ActiveRecord::Base
  before_save :set_default_image_path
  validates :name, presence: true

  private

  def set_default_image_path
    self.image_path ||= "http://lorempixel.com/200/200/fashion"
  end

  class << self
    def alphabetical
      order("name ASC")
    end

    def discount_amount
      
    end
  end
end
