module CommentsHelper
  def render_comments(owner)
    render_cell 'comment/owner', :show, owner
  end
end
