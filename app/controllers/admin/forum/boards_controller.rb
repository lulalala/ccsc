module Admin::Forum
  class BoardsController < Admin::BaseController
    before_filter :set_board, only:[:show]

    def index
    end

    def show
      if params[:order].present?
        sort_by = (params[:order] == 'created_at') ? 'created_at' : 'comment_topics.commented_at'
        @topics = @board.topics.includes(:comment_topic).order(sort_by)
      else
        @topics = @board.topics.order(:position)
      end
    end

    def new
      @board = ::Forum::Board.new
    end

    def create
      @board = ::Forum::Board.new(board_param)
      if @board.save
        redirect_to admin_forum_path
      else
        flash[:error] = @board.errors.full_messages
      end
    end

    private

    def set_board
      @board = ::Forum::Board.find(params[:id])
    end

    def board_param
      params.permit(:name, :admin, :order)
    end
  end
end
