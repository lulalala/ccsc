module Comment
  class PostsController < ApplicationController
    before_action :set_post, only: [:destroy]

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

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end
  end
end
