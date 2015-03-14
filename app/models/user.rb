class User < ActiveRecord::Base
  has_secure_password

  validate :validates_chicken

  def validates_chicken
    if chicken == false
      errors[:chicken] << "You must be a chicken to be part of our escape plan!"
    end
  end
end
