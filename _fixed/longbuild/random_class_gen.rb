#!/usr/bin/env ruby
# This generates valid, but gibberish Ruby classes - this was used to generate enough code
# to demonstrate the problem with long build times

NUM_CLASS_FILES=10

def random_string
  (0...8).map { (97 + rand(26)).chr }.join
end

NUM_CLASS_FILES.times do
  class_name = random_string
  File.open("app/fake_classes/#{class_name}.rb", "w") do |file|
    class_def = <<-EOC

class #{class_name.capitalize}
  def #{random_string}
    Hash.new 
  end
end

    EOC
    file.puts class_def
  end
end
