class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    puts "creating RoundRect with Java"
    p createRoundRectWithJava()
    puts "creating RoundRect with Ruby"
    p create_round_rect_with_ruby()
  end

  def create_round_rect_with_ruby
    radii = [5.0, 5.0, 5.0, 5.0, 5.0, 5.0, 5.0, 5.0]
    shape = Android::Graphics::Drawable::Shapes::RoundRectShape.new(radii, nil, nil)
  end

  # createRoundRectInJava defined in main_activity.java
  
end
