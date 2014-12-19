class Parks
  @parks = {}

  def initialize(parks)
    @parks = parks
  end

  def index_by_id
    result = {}
    @parks.each do |park|
      result[park[:id]] ||= {}
      result[park[:id]] = park
    end
    result
  end

  def index_by_country
    result = {}
    @parks.each do |park|
      result[park[:country]] ||= []
      result[park[:country]] << park
    end
  end

  def index_by_country_and_state
    result = {}
    @parks.each do |park|
      result["#{park[:state]}, #{park[:country]}"] ||= []
      result["#{park[:state]}, #{park[:country]}"] << park
    end
  end
end
