# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  user_name  :string           not null
#  token      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
