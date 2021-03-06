
class Geography::Sell
    attr_accessor :name, :url, :name1, :name2, :name3, :name4, :name5
    def self.right_now
      self.scrape_sell
    end

    def self.scrape_sell
        sell = []
        sell << self.scrape_sciencetrends
        sell
    end

        def self.scrape_sciencetrends
        doc = Nokogiri::HTML(open("https://sciencetrends.com/many-countries-can-name-world/"))
        sells = self.new
        sells.name = doc.css("h2")[1].text.strip
        sells.name1 = doc.css("h2")[2].text.strip
        sells.name2 = doc.css("h2")[3].text.strip
        sells.name3 = doc.css("h2")[4].text.strip
        sells.name4 = doc.css("h2")[5].text.strip
        sells.name5 = doc.css("h2")[6].text.strip
        sells
      end
    end
