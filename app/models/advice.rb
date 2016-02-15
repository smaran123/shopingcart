class Advice < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :thumb => "700x460", :small => "60x60"}, :default_url => "/assets/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates :title, :avatar, :description, :presence => true
  validates :title, uniqueness: true
  scope :visible, -> {where("visible=?", true)}
end
