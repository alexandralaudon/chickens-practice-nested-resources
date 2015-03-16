class Chicken < ActiveRecord::Base
  has_many :memberships
  has_many :escape_plans, through: :memberships

end
