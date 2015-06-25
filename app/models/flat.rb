class Flat < ActiveRecord::Base
  belongs_to :user
  has_many :bookings, dependent: :destroy

  has_attached_file :picture,
    styles: { medium: "450x300>", thumb: "150x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
#   def self.search(search)

#  if search
#    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
#  else
#    find(:all)
#  end
# end
end
