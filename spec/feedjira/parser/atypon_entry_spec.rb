require File.join(File.dirname(__FILE__), %w(.. .. spec_helper))

describe Feedjira::Parser::Atypon do
  describe '#will_parse?' do
    it 'should return true for a atypon rss feed' do
      expect(Feedjira::Parser::Atypon).to(
        be_able_to_parse(sample_atypon_rss_feed)
      )
    end

    it 'should return false for a regular RSS feed' do
      expect(Feedjira::Parser::Atypon).to_not be_able_to_parse(sample_rss_feed)
    end
  end

  describe 'parsing' do
    before(:each) do
      @feed = Feedjira::Parser::Atypon.parse(sample_atypon_rss_feed)
    end

    it 'should parse the title' do
      expect(@feed.title).to eq 'American Public Health Association: American Journal of Public Health: Table of Contents' # rubocop:disable Metrics/LineLength
    end

    it 'should parse the description' do
      expect(@feed.description).to eq 'Table of Contents for American Journal of Public Health. List of articles from both the latest and ahead of print issues.' # rubocop:disable Metrics/LineLength
    end

    it 'should parse the url' do
      expect(@feed.url).to eq 'http://ajph.aphapublications.org/loi/ajph?af=R'
    end

    it 'should provide an accessor for the feed_url' do
      expect(@feed).to respond_to :feed_url
      expect(@feed).to respond_to :feed_url=
    end

    it 'should parse entries' do
      expect(@feed.entries.size).to eq 20
    end
  end
end
