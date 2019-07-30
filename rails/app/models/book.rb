class Book < ApplicationRecord
    belongs_to :subject
    validates_presence_of :title #title not null
    validates_numericality_of :price, :message=>"Error message" #price is number
end
