module Admin::Comment
  class PostsController < Admin::BaseController
    # For creating new topic or replying
    def create

      outcome = Comment::Create.run(
        owner: Comment::Post.find_owner(params[:owner_type], params[:owner_id]),
        author: params[:author],
        content: params[:content]
      )

      respond_to do |format|
        if outcome.valid?
          flash[:notice] = 'Successfully created.'

          format.html { redirect_to :back }
        else
          flash[:error] = outcome.errors.full_messages.join('<br/>').html_safe

          format.html { redirect_to :back }
        end
      end
    end

    def edit
      @post = ::Comment::Post.find(params[:id])
    end

    def update
      @post = ::Comment::Post.find(params[:id])
      @board = @post.topic.owner.board
      @topic = @post.topic.owner
      outcome = Comment::Update.run(
        post: @post,
        author: params[:author],
        content_html: params[:content_html]
      )
      respond_to do |format|
        if outcome.valid?
          flash[:notice] = 'Successfully updated.'
          format.html { redirect_to admin_forum_board_topic_path(board_id: @board.id, id: @topic.id) }
        else
          flash[:error] = outcome.errors.full_messages.join('<br/>').html_safe
          format.html { redirect_to :back }
        end
      end
    end

  end
end
