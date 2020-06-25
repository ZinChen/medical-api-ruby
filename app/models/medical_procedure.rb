class MedicalProcedure < ApplicationRecord
  include Searchable

  validates :name, presence: true
end
