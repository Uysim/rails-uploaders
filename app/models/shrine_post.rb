class ShrinePost < ApplicationRecord
  include ShrineImageUploader::Attachment.new(:image)
end
