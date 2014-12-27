class String
  def self.add_new_method(name, &logic)
    send(:define_method, name) do |*args|
      puts "You have created a method #{name}, and you are in it now."
      logic.call(*args)
    end
  end
end

String.add_new_method(:add_numbers) do |x, y|
  puts "Here is the logic"
  puts x + y
end

"str".add_numbers(1, 3, 4)
