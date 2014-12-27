class Model
  @@all_fields = []

  def self.field(name)
    @@all_fields << name
    attr_accessor(name)
  end

  def initialize
    @fields = @@all_fields
  end
end

class Account < Model
  field :balance
  field :address
  field :name
end

a = Account.new
a.balance = 10000
a.address = "Where"
a.name = "Daniel"
puts a.inspect
