# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  user_name  :string           not null
#  token      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :graphs
  validates :user_name, presence: true, uniqueness: { allow_blank: true }
  validates :token, presence: true

  before_save :encrypt_token

  def encrypt_token
    self.token = token_encoder.encrypt_and_sign(self.token)
  end

  def decrypt_token
    return '' if self.token.to_s.empty?

    token_encoder.decrypt_and_verify(self.token)
  end

  def token_encoder
    cipher = 'aes-256-cbc'
    secret = Rails.application.credentials.secret_key_base
    # Saltはもうちょっとひねろうか
    salt = Rails.application.secret_key_base
    key_len = ActiveSupport::MessageEncryptor.key_len(cipher)
    key = ActiveSupport::KeyGenerator.new(secret).generate_key(salt, key_len)
    ActiveSupport::MessageEncryptor.new(key, cipher: cipher)
  end
end
