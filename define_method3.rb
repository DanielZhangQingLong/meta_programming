class Model
  @@all_fields = []

  def self.field(name)
    @@all_fields << name
    attr_accessor(name)
  end

  def print
    @@all_fields.each do |field|
      puts send(field)
    end
  end
end

class Account < Model
  field :balance
  field :address
  field :name
end

a = Account.new

a.balance = 22222
a.address = "SSSS"
a.name = "mmmmm"

a.print
