class Training < ApplicationRecord
  with_options presence: true do
    validates :training
    with_options numericality: { only_integer: true, message: 'is invalid. Input half-width number.' } do
      validates :weight_kg
      validates :weight_lb
      validates :rep
      validates :set_number
    end
  end

  belongs_to :log
 
end
