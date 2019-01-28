class Comedian < ActiveRecord::Base

  has_many :specials

  def self.validate(params)
  end



  def self.fetch_comedians(params)
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    elsif params[:city]
      @comedians = Comedian.where(city: params[:city])
    else
      @comedians = Comedian.all
    end
  end

  def self.average_age
    @comedians = Comedian.average(:age)
  end

  def self.min_age
    @comedians = Comedian.minimum(:age)
  end

  def self.max_age
    @comedians = Comedian.maximum(:age)
  end

  def self.find(id)
    @comedian = Comedian.find(params[:id])
  end

  def self.specials_average_length
    @comedians = Special.average(:length)
  end

  def self.list_cities
    Comedian.distinct.pluck(:city).join(', ')
  end

  def self.num_specials
    Special.count(:id)
  end

end
