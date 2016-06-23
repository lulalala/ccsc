class CultureEntryPresenter < LulalalaPresenter::Base
  def index_abstract
    h.truncate(
      h.strip_tags(model.post.body),
      length:80
    )
  end
end
