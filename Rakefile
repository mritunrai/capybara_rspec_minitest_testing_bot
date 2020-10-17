require "rubygems"
require "cucumber"
require "cucumber/rake/task"
require "rake/clean"
CLEAN.include("*.tmp")
CLOBBER.include("*.tmp", "build/*")

Cucumber::Rake::Task.new(:run_features, "This is my cucumber rake task") do |t, args|
  #t.profile = "runCucumberTest"

  t.cucumber_opts = %w{--tags @smoke}    # comment above line of code to use this.
end

task :runCucumberTest, [:arg1] do |t, args|
  puts "Args were: #{args} of class #{args.class}"
  puts "arg1 was: '#{args[:arg1]}' of class #{args[:arg1].class}"

  ENV["BROWSER"] = args.arg1

  puts "Env browse name, #{args.arg1}"

  Rake::Task[:run_features].invoke()
end

task :default => [:runCucumberTest]
