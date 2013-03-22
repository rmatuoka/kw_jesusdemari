class NewsController < ApplicationController
  def index
  @news = Notice.all
  end

  def show
  @notice = Notice.find_by_id(params[:id])
  if @notice.blank?
  redirect_to news_index_path
  end
  @noticeNext = Notice.first(:conditions => ['id <> ?', params[:id]])
  end

end
