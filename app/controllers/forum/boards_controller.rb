module Forum
  class BoardsController < ApplicationController
    before_filter :set_board, only:[:show]

    def index
    end

    def show
    end

    private

    def set_board
      @board = Forum::Board.find(params[:id])
    end
  end
end
