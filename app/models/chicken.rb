class Chicken < ActiveRecord::Base
  validates :name, presence: true
end
