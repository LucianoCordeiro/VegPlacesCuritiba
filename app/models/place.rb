class Place < ApplicationRecord

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
