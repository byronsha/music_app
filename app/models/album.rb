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

class Album < ActiveRecord::Base
  validates :title, :band_id, :live_or_studio, presence: true

  belongs_to :band,
    primary_key: :id,
    foreign_key: :band_id,
    class_name: "Band"

  has_many :tracks,
    primary_key: :id,
    foreign_key: :album_id,
    class_name: "Track",
    dependent: :destroy


end
