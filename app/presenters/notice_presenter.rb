class NoticePresenter < LulalalaPresenter::Base
  def index_abstract
    h.truncate(
      h.strip_tags(model.try(:body)),
      length:80
    )
  end
end
