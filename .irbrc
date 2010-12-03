load File.dirname(__FILE__) + '/.railsrc' if ENV['RAILS_ENV']
begin
	require 'wirble'
	Wirble.init
	Wirble.colorize
rescue LoadError => err
	warn "Couldn't load Wirble: #{err}"
end
