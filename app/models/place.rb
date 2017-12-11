class Place < ApplicationRecord
  has_and_belongs_to_many :services

  def self.search(search)
    if search
      if search != ''
        where('modality LIKE ? or address LIKE ?', "%#{search}%", "%#{search}%").order("RANDOM()")
      else
        where(name: 'Joei')
      end
    else
      where(name: 'Joet')
    end
  end
end

 def places_count
   Place.count
 end
