class Protip
  attr_reader :owner, :text

  def initialize(attrs)
    @owner, @text = attrs[:owner], attrs[:text]
  end
end
