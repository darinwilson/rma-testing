class MainFragment < Android::App::Fragment
  def onCreateView(inflater, parent, saved_instance_state)
    super
    Android::Widget::FrameLayout.new(activity).tap do |view|
      view.setBackgroundColor(0xff888888) # gray background
    end
  end

  # this throws NoMethodError
  def onSaveInstanceState(outState)
    super
    puts "Fragment: onSaveInstanceState"
  end
end

class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    @fragment_container = Android::Widget::FrameLayout.new(self)
    @fragment_container.setId Android::View::View.generateViewId 
    self.contentView = @fragment_container
    fragmentManager.beginTransaction()
      .add(@fragment_container.getId, MainFragment.new)
      .commit
  end

  # this works correctly
  def onSaveInstanceState(savedInstanceState)
    super
    puts "Activity: onSaveInstanceState"
  end
end
