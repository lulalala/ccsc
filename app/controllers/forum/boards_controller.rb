module Forum
  class BoardsController < ApplicationController
    before_action :set_board, only:[:show]

    def index
    end

    def show
      @topics = @board.topics.order('position IS NULL, position', 'created_at') # Null's last
    end

    private

    def set_board
      @board = Forum::Board.find(params[:id])
    end
  end
end
