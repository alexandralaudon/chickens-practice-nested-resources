class Chicken < ActiveRecord::Base
  validates :name, presence: true
  has_many :escape_plans, through: :memberships
  has_many :memberships
end
