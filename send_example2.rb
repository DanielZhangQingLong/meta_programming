class Klass
  def say_hello(*args)
    "Hello" + args.join(' ')
  end
end

k = Klass.new

k.send(:say_hello, "Daniel", "Zhang")
