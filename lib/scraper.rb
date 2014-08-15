#Your code goes here
#Don't forget to require open-uri and nokogiri
require 'nokogiri'
require 'open-uri'

class Stress
    def initialize
      @nokogiri_doc = Nokogiri::HTML(open('http://www.brainyquote.com/quotes/keywords/stress.html'))
      #@nokogiri_doc = Nokogiri::HTML(stress_html)
    end

    def get_quotes
      stress_quotes = []
      stress_array= @nokogiri_doc.css("div span.bqQuoteLink")
      stress_array.each do |q|
         stress_quotes << q.text
      end
      stress_quotes
    end

  #puts stress_array[2].text 

  def random_quote
    get_quotes.sample
  end 

end
