class SpaceTaxi
  attr_accessor :id, :availability
  def initialize(id, availability = true)
    @id = id
    @availability = availability
  end
  # def belong_to(company)
  #   @company = company
  # end
end
