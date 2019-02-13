class BlogController < ActionController::Base

  def index
    @page = params[:page]
    # render text: "hello, world!"
  end

  def show
    @id = params[:id]
    @page = params[:page]
  end

  def create
    redirect_to action: :index
  end
end

#inside Rails

kontroller = BlogController.new
kontroller.send(:show) # call the show method
kontroller.id
kontroller.test
ERB.render("show.html.erb", kontroller.instance_variables)


