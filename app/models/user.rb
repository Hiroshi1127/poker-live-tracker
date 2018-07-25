class User < ApplicationRecord
  validates: name,
      presence:true,
      uniqueness: ture,
      length: { maximum: 50}
      format: {
        with: /\A[a-z0-9]+\z/,
        message: 'は小文字英数字で入力してください'
      }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
      format: { with: VALID_EMAIL_REGEX },
      uniqueness: { case_sensitive: false }
end
