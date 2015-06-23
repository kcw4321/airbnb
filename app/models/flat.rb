class Flat < ActiveRecord::Base
  belongs_to :user
  has_many :bookings, dependent: :destroy
#   def self.search(search)

#  if search
#    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
#  else
#    find(:all)
#  end
# end
end
