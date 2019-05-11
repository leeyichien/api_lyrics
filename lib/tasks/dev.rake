namespace :dev do
  task :fetch_lyrics => :environment do
    puts "Fetch song lyrics..."
    response = RestClient.get "https://api.lyrics.ovh/v1/coldplay/yellow"
    data = JSON.parse(response.body)
    puts data
    Lyric.create!( :song_lyrics => data["lyrics"] )
    puts "....end....."
  end
end
