require File.expand_path(File.dirname(__FILE__) + '/../lib/feedjira_atypon')
require 'sample_feeds'

RSpec.configure do |c|
  c.include SampleFeeds
end
