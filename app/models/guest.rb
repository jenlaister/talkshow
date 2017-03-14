class Guest < ActiveRecord::Base

  has_many :appearances
  has_many :episodes, through: :appearances

  def full_name
    "#{first_name} #{last_name}"
  end

end
