module Admin::Forum
  class TopicsController < Admin::BaseController
    before_filter :set_board, except: [:all_topics]
    before_filter :set_topic, only: [:show, :edit, :update, :destroy]

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
        outcome.result.user_id = current_user.id
        outcome.result.save!
      end

      respond_to do |format|
        if outcome.valid?
          flash[:notice] = 'Successfully created.'

          format.html { redirect_to admin_forum_board_topic_path(@board, outcome.result) }
        else
          flash[:error] = outcome.errors.full_messages.join('<br/>').html_safe

          format.html { redirect_to admin_forum_board_path(@board) }
        end
      end
    end

    def edit
    end

    def update
      @topic.update(topic_params)
      redirect_to admin_forum_board_path(id: @board.id)
    end

    def destroy
      @topic.destroy
      redirect_to admin_forum_board_path(id: @board.id)
    end

    def move_to_top
      @topic = ::Forum::Topic.find(params[:topic_id])
      @topic.move_to_top
      redirect_to :back
    end

    def all_topics
      @topics = ::Forum::Topic.order(created_at: :desc).page(params[:page])
    end

    private

    def set_board
      @board = ::Forum::Board.find(params[:board_id])
    end

    def set_topic
      @topic = @board.topics.find(params[:id])
    end

  end
end
