class LocationSearch
  attr_reader :where_clause, :where_args, :order
  def initialize(search)
    search = search.downcase
    @where_clause = ""
    @where_args   = {}
    @order        = ""
    build_location_search(search)
  end

  private

  def build_location_search(search_term)
    extracted_city    = extract_city_name(search_term)
    extracted_country = extract_country_name(search_term)

    @where_clause << case_insensitive_search(:city_name)
    @where_args[:city_name] = contains(extracted_city)

    @where_clause << " OR #{case_insensitive_search(:country)}"
    @where_args[:country] = contains(extracted_country)

    @order = "city_name asc"
  end

  def contains(extracted_name)
    '%' + extracted_name + '%'
  end

  def case_insensitive_search(field_name)
    "lower(#{field_name}) like :#{field_name}"
  end

  def extract_city_name(search_term)
    search_term.gsub(/,.*$/, '')
  end

  def extract_country_name(search_term)
    search_term.gsub(/^(.+),\s/, '')
  end
end
