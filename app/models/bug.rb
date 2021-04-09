class Bug < ApplicationRecord
  belongs_to :user
  has_many :solutions
  validates_presence_of :title
end
