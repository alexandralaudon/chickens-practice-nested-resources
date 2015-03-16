class EscapePlan < ActiveRecord::Base
  belongs_to :safe_place
  has_many :memberships
  has_many :chickens, through: :memberships
end
