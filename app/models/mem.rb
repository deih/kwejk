class Mem < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :name, presence: true
  after_validation(on: :create) do
  	self.active = false
end
scope :active, ->{where active: true} # komunikacja bazy danych poprzez model / wyswietlanie widokow z modelu
scope :inactive, ->{where active: false}

end
