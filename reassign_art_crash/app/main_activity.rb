class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    sym = :thing
    sym = sym.to_s
    puts sym
  end
end
