class Array
  def self.add_new_method(name, &logic)
    puts self.inspect + "--1--"
    Array.send(:define_method, name) do |*args|
      puts self.inspect + "--2--"
      logic.call(self, *args)
    end
  end
end

Array.add_new_method("prepend_array") do |me, x|
  puts "This is the actual logic of method"
  puts self.inspect + "--3--"
  puts me.inspect + "--4-"
  me.each { |e| puts "#{x} #{e}" }
end

["cat", "dog", "bird"].prepend_array("Animal: ")

# def prepend_array(x/args)
#   
# end
