module Comment
  class TopicCell < Cell::Rails
    def show(topic)
      @topic = topic
      @posts = @topic.posts.order(id: :asc)

      render
    end
  end
end
