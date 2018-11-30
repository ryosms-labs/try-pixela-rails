# == Schema Information
#
# Table name: graphs
#
#  id         :bigint(8)        not null, primary key
#  graph_id   :text             not null
#  graph_name :text             not null
#  unit       :text             not null
#  graph_type :integer          not null
#  color      :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class GraphTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
