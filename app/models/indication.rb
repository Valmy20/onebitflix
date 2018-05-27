class Indication < ApplicationRecord
  belongs_to :user
  belongs_to :indicatable, polymorphic: true
end
