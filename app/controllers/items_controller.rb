class ItemsController < ApplicationController

  def search
    keyword = params[:keyword]

    if keyword.present?
      items = RakutenWebService::Ichiba::Item.search(keyword: keyword)
      @search_results = items.first(10) # 結果をビューに渡す
    else
      # キーワードが空の場合のエラーハンドリングまたはデフォルトの表示を設定
      @search_results = []
    end
    
    render 'search' # search.html.erb ビューを表示
  end

end
