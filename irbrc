require 'rubygems'

begin
  require 'wirble'
  Wirble.init
  Wirble.colorize
rescue LoadError
  $stderr.puts "could not load Wirble"
end

begin
  require 'hirb'
  Hirb.enable
  extend Hirb::Console
rescue LoadError
  $stderr.puts "could not load Hirb"
end

begin
  require 'interactive_editor'
rescue LoadError
  $stderr.puts "could not load Interactive Editor"
end

require 'pp' 
require 'irb/ext/save-history' 
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:EVAL_HISTORY] = 200
