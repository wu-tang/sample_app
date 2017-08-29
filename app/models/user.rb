class User < ApplicationRecord
  #before_save { self.email = email.downcase }
  #validates :name,  presence: true, length: { maximum: 50 }
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email, presence: true, length: { maximum: 255 },
  #                  format: { with: VALID_EMAIL_REGEX },
  #                  uniqueness: { case_sensitive: false }
  #has_secure_password
  #validates :password, presence: true, length: { minimum: 6 }

  ### XXX
  has_many :rekishis

  # 渡された文字列のハッシュ値を返す

 has_many :rekishis, dependent: :destroy
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  class <<	self
    def find_or_create_from_auth_hash(auth_hash)
 #OmniAuthで取得した各データを代入していく
     provider = auth_hash[:provider]
     uid = auth_hash[:uid]
     #name = auth_hash[:info][:nickname]
 
     user = User.find_by(provider: provider, uid: uid)
     User.create!(provider: provider, uid: uid) unless user
     user
     end
   end
end	