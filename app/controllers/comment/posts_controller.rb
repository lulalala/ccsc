module Comment
  class PostsController < ApplicationController
    # For creating new topic or replying
    def create
      if !verify_recaptcha
        flash[:error] = "留言必須按'我不是機器人'"
        redirect_to :back
        return
      end

      outcome = Comment::Create.run(
        owner: Comment::Post.find_owner(params[:owner_type], params[:owner_id]),
        author: params[:author],
        content: params[:content]
      )

      respond_to do |format|
        if outcome.valid?
          flash[:notice] = 'Successfully created.'

          format.html { redirect_back(fallback_location: root_path) }
        else
          flash[:error] = outcome.errors.full_messages.join('<br/>').html_safe

          format.html { redirect_back(fallback_location: root_path) }
        end
      end
    end
  end
end
