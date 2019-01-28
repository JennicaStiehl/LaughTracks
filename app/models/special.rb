class Special < ActiveRecord::Base

  belongs_to :comedian

  def self.fetch_specials
      @specials = Special.all
  end



end
