class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
    validates :gender_id
  end

  has_many :logs, dependent: :destroy
  has_many :comments
  has_many :likes, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender

  def liked_by?(log_id)
    likes.where(log_id: log_id).exists?
  end
end
