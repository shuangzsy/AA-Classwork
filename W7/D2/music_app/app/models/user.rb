class User < ApplicationRecord
  attr_reader :password

  before_validation :ensure_session_token #or after_initilize

  validates :email, :password_digest, :session_token, presence: true
  validates :email, :session_token, uniqueness: true
  validates :password, length:{minimum: 6}, allow_nil: true





  def reset_session_token!
    self.session_token = SecureRandom::urlsafe_base64
    self.save!
    self.session_token
  end

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
    @password = password
  end

  def is_valid_password?(password)
    password_object = BCrypt::Password.new(self.password_digest)
    password_object.is_password?(password)
  end

  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    if user && user.is_valid_password?(password)
      return user
    else
      nil
    end
  end

  def ensure_session_token
    self.session_token ||= SecureRandom::urlsafe_base64
  end

end
