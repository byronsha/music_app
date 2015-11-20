# == Schema Information
#
# Table name: albums
#
#  id             :integer          not null, primary key
#  title          :string
#  band_id        :integer          not null
#  live_or_studio :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
