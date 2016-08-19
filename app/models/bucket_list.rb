# == Schema Information
#
# Table name: bucket_lists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  location   :string(255)
#  mates      :text(65535)
#  timing     :date
#  comment    :text(65535)
#  image      :text(65535)
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BucketList < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :location, :presence => true
  validates :timing, :presence => true
  validates :status, :presence => true
  before_save :capitalize_name
  enum status: [ :in_progress, :completed, :pending ]

	def capitalize_name
		self.name = self.name.capitalize
	end
end
