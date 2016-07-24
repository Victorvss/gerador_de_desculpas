class Apologize < ActiveRecord::Base
  mount_uploader :apologize_image, ApologizeUploader
  belongs_to :person
end
