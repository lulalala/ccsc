module Comment
  class TopicCell < ApplicationCell
    def show(topic)
      @topic = topic
      @posts = @topic.posts.order(id: :asc)

      render
    end
  end
end
