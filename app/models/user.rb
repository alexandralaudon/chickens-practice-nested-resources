class User < ActiveRecord::Base
  has_secure_password

  validate :is_a_chicken

  def is_a_chicken
    unless chicken == true
      errors[:chicken] << "You must be a chicken to be part of our escape plan!"
    end
  end
end
