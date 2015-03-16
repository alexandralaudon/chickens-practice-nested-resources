class Membership < ActiveRecord::Base
  belongs_to :chicken
  belongs_to :escape_plan
end
