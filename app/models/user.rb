class User < ActiveRecord::Base
  has_secure_password
  has_many :attendees
  has_many :concerts, through: :attendees 
  def editor?
    self.role == 'editor'
  end
  def admin?
    self.role == 'admin'
  end
end
