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
  end

  def get_saleoff_percentage
    percentage_sale = 0

    if price_vnd >= 100000
      percentage_sale = 0.21
    elsif price_vnd > 200000
      percentage_sale = 0.31
    elsif price_vnd > 800000
      percentage_sale = 0.41
    end

    percentage_sale
  end

end
