class Bug < ApplicationRecord
  belongs_to :user
  has_many :solutions
  validate_presence_of :title
end
