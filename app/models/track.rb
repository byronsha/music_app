# == Schema Information
#
# Table name: tracks
#
#  id               :integer          not null, primary key
#  title            :string           not null
#  album_id         :integer          not null
#  bonus_or_regular :string           not null
#  lyrics           :text             not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Track < ActiveRecord::Base
  validates :title, :album_id, :bonus_or_regular, :lyrics, presence: true

  belongs_to :album,
    primary_key: :id,
    foreign_key: :album_id,
    class_name: "Album"

  has_one :band,
    through: :album,
    source: :band

  has_many :notes

end
