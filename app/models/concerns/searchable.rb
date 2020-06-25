module Searchable
 extend ActiveSupport::Concern

 module ClassMethods
  def search_by_name(query)
    starts_with_query = where('name ILIKE ?', "#{query}%")
    contain_query = MedicalProcedure.where.not(id: starts_with_query.map(&:id)).where('name ILIKE ?', "%#{query}%")
    starts_with_query + contain_query
  end
 end
end
