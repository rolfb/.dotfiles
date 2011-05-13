require 'rubygems'
require 'wirble'
require 'hirb'
require 'pp'
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:EVAL_HISTORY] = 200

Wirble.init
Wirble.colorize
Hirb.enable
extend Hirb::Console
