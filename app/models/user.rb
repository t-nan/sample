class User < ApplicationRecord

  before_save { self.email = email.downcase }                                  #перевод email в нижний регистр перед сохранением
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i                     #шаблон из регулярных выражений. VALID_EMAIL_REGEX - константа  
  validates :email, presence: true, length: { maximum: 255 },
                                            format: { with: VALID_EMAIL_REGEX },
                                            uniqueness: { case_sensitive: false }
                                            
end
