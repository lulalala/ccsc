module Forum
  class TopicsController < ApplicationController
    before_filter :set_board
    before_filter :set_topic, only: [:show, :edit, :update]

    def show
    end

    def new
    end

    def create
      if !verify_recaptcha
        flash[:error] = "留言必須按'我不是機器人'"
        redirect_to :back
        return
      end

      outcome = Forum::CreateTopic.run(
        board: @board,
        author: params[:author],
        title: params[:title],
        content: params[:content],
        content_is_html: true
      )

      if current_user
        outcome.update_attribute(:user_id, current_user.id)
      end

      respond_to do |format|
        if outcome.valid?
          flash[:notice] = 'Successfully created.'

          format.html { redirect_to forum_board_topic_path(@board, outcome.result) }
        else
          flash[:error] = outcome.errors.full_messages.join('<br/>').html_safe

          format.html { redirect_to forum_board_path(@board) }
        end
      end
    end

    def edit
      check_user
    end

    def update
      check_user
      @topic.update(topic_params)
      redirect_to forum_board_path(id: @board.id)
    end

    private

    def set_board
      @board = Forum::Board.find(params[:board_id])
    end

    def set_topic
      @topic = @board.topics.find(params[:id])
    end

    def check_user
      if current_user.id != @topic.user_id
        redirect_to :back
        flash[:error] = "您沒有權限編輯此內容"
      end
    end

  end
end
