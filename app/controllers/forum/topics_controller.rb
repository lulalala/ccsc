module Forum
  class TopicsController < ApplicationController
    before_filter :set_board

    def show
      @topic = @board.topics.find(params[:id])
    end

    def new
    end

    def create
      outcome = Forum::CreateTopic.run(
        board: @board,
        author: params[:author],
        title: params[:title],
        content: params[:content],
        content_is_html: true
      )

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

    private

    def set_board
      @board = Forum::Board.find(params[:board_id])
    end
  end
end
