class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    10.times do |i|
      puts i
      break
    end
  end
end
