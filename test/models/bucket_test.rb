# == Schema Information
#
# Table name: buckets
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

require 'test_helper'

class BucketTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
