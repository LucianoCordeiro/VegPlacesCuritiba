class Contact < ApplicationRecord

  before_save :downcase_email
  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :body
  validates :body,   length: { in: 1..2000 }

  def downcase_email
    self.email = email.downcase
  end

end
