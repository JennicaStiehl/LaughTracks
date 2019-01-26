class Comedian < ActiveRecord::Base

  has_many :specials

  def self.fetch_comedians(params)
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
  end

  def self.average_age
    @comedians = Comedian.average(:age)
  end

  def self.specials
    @comedians
  end

  def self.specials_average_length
    @comedians = Comedian.specials.average(:length)
  end

end
