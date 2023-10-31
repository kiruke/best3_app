require 'faraday'
require 'json'
require 'uri'

puts '検索キーワードを入力してください'
search_keyword = gets.chomp

# URIエンコードを行う
encoded_search_keyword = URI.encode_www_form_component(search_keyword)

# 環境変数からAPIキーを取得
app_id = ENV['RAKUTEN_APP_ID']

# Faradayの初期化とAPIリクエストの送信
conn = Faraday.new(url: "https://app.rakuten.co.jp/services/api/IchibaItem/Search/20220601") do |faraday|
  faraday.params['applicationId'] = app_id
  faraday.params['keyword'] = encoded_search_keyword
end

res = conn.get

# レスポンスのJSON解析
  res.success?
  res_json = JSON.parse(res.body)
  puts res_json

url = "https://app.rakuten.co.jp/services/api/BooksBook/Search/
20170404?format=json&title=%E5%A4%AA%E9%99%BD&booksGenreId=001004008&application
Id=1074002262111683220"