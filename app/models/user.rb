class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation,:tel,
                  :louhao,:jiqu,:fangjian,:zuoyou
  has_secure_password
  has_many :orderlists, dependent: :destroy

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  validates :louhao,presence:true
  validates :jiqu,presence:true
  validates :fangjian,presence:true
  validates :zuoyou,presence:true
  validates :tel,presence:true,length:{is:11},numericality:true

  private
  

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
    
end


