class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :first_name, presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :last_name, presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :read_first_name, presence: true, format: { with: /\A[ァ-ヶー－]+\z/}
  validates :read_last_name, presence: true, format: { with: /\A[ァ-ヶー－]+\z/}
  validates :birthday, presence: true
end
