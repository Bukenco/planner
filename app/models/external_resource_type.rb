class ExternalResourceType < ApplicationRecord
  validates :name,    presence: true
  validates :id_name, presence: true
end
