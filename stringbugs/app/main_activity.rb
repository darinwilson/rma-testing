class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    my_java_string = Java::Lang::String.new("my java string")
    my_ruby_string = "my ruby string"

    # http://hipbyte.myjetbrains.com/youtrack/issue/RM-722 
    # getBytes() still doesn't work

    puts "java getBytes()"
    my_java_string.getBytes()
    puts "Ruby getBytes()"
    my_ruby_string.getBytes()
  end
end
