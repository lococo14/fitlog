class Tag < ApplicationRecord
  has_many :tag_relations, dependent: :destroy
  has_many :logs, through: :tag_relations
  validates :name, uniqueness: true
end
