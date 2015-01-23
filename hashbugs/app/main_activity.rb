class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    # Hash still doesnt' implement Enumerable
    ruby_hash = { foo: "bar" }
    puts ruby_hash.count
  end
end
