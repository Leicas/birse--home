# By doing a "require 'net/ping'" you are requiring every subclass.  If you
# want to require a specific ping type only, do "require 'net/ping/tcp'",
# for example.
#
require 'rbconfig'

require File.join(File.dirname(__FILE__), 'ping/tcp')
require File.join(File.dirname(__FILE__), 'ping/udp')
require File.join(File.dirname(__FILE__), 'ping/icmp')
require File.join(File.dirname(__FILE__), 'ping/external')
require File.join(File.dirname(__FILE__), 'ping/http')

if Config::CONFIG['host_os'] =~ /msdos|mswin|cygwin|mingw|win32|windows/i &&
  RUBY_PLATFORM != 'java'
then
  require File.join(File.dirname(__FILE__), 'ping/wmi')
end
