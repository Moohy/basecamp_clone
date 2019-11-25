class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :database_authenticatable,
  :jwt_authenticatable,
  jwt_revocation_strategy: JWTBlacklist
  # has_secure_password
  # attribute :project_id, default: nil
  # attribute :node_id, default: nil
  has_many :projects
  has_many :notes

  validates :name, presence: true
  # validates :email, uniqueness: true, presence: true
  # validates :password_digest, presence: true
end
