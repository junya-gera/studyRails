class StartController < ApplicationController
  def hello()
    render:plain => ('Hello World!')
  end

  def index()
    @title = "Hello Rails!:"
    @header = "studyRails"
    @footer = "junjun"
    if request.post?
      @msg = params[:input]
    else
      @msg = "Not POST"
    end
  end
end
