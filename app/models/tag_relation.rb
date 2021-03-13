class TagRelation < ApplicationRecord
  belongs_to :log
  belongs_to :tag  
end
