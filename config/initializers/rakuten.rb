RakutenWebService.configure do |c|
  # 楽天アプリケーションID
  c.application_id = Rails.application.config.rakuten_api[:application_id]
  # 楽天アフィリエイトID
  c.affiliate_id = '3179a0e0.da4d0774.3179a0e1.0f865fdf'
end
