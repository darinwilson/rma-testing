class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    puts "test".instance_eval { length }
  end
end
