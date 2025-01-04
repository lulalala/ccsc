module CommentsHelper
  def render_comments(owner)
    cell 'comment/owner', :show, owner
  end
end
