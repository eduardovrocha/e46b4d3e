class Resource < ApplicationRecord
  has_many :resource_fields
  has_many :resource_actions
end
