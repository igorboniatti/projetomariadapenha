class Archive < ApplicationRecord
  belongs_to :category
  has_attached_file :arch
  validates :arch, :attachment_content_type => { :content_type => ['application/pdf'] }
end
