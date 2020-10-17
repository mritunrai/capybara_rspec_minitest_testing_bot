require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'rake/clean'
CLEAN.include('*.tmp')
CLOBBER.include('*.tmp', 'build/*')

  task :runCucumberTest, [:arg1, :arg2] do |t, args|
    puts "Args were: #{args} of class #{args.class}"
    puts "arg1 was: '#{args[:arg1]}' of class #{args[:arg1].class}"
    puts "arg2 was: '#{args[:arg2]}' of class #{args[:arg2].class}"
    puts "arg1 was: '#{args[:arg1]}' of class #{args[:arg1].class}"
    puts "arg2 was: '#{args[:arg2]}' of class #{args[:arg2].class}"


    ENV['BROWSER'] = args.arg1

    puts "Env browse name, #{args.arg1}."

    ENV['TAG'] = args.arg2
    
    puts "Env Tag name, #{args.arg2}."

    Rake::Task[:run_features].execute()
	
  end

Cucumber::Rake::Task.new(:run_features)
task :default => [:runCucumberTest]