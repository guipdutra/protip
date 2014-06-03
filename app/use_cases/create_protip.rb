require_relative '../entities/protip'
require_relative '../mappers/protip_repo'

class CreateProtip
  def initialize(form)
    @form = form
  end

  def create
    protip = Protip.new(form.attributes)

    ProtipRepo.save(protip)
  end

  private

  attr_accessor :form
end
