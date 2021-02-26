class Log < ApplicationRecord
  validates :title, presence: true
  validates :day_id, presence: true
  validates :user_id, presence: true

  has_many :trainings, dependent: :destroy
  accepts_nested_attributes_for :trainings, allow_destroy: true
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :day

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
end
