class MusicController < ApplicationController
  def index
  end

require 'csv'    

csv_text = File.read('C:\Users\Kiroui\Desktop\MusicFinder.csv').encode("UTF-8", invalid: :replace, undef: :replace, replace: "?")
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Moulding.create!(row.to_hash)
end
end
