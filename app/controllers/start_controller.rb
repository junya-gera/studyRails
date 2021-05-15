class StartController < ApplicationController
  def hello()
    render:plain => ('Hello World!')
  end

  def index()
    if request.post?
      @title = "Hello Rails!:"
      @msg = params[:input]
    else
      @title = "Hello Rails!:"
      @msg = "Not POST"
    end
  end
end
