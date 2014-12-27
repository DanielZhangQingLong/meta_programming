class String
  def self.add_new_method(name)
    send(:define_method, name) {
      puts "You have created a new mtd #{name}, and you are in it now"
    }
  end
end

String.add_new_method("Mat")

"hhhhh".Mat
