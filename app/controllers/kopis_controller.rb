class KopisController < ApplicationController

# methods here are named plainly because ruby uses the same name to search for views filenames
# index method for eg. index.html.erb

  def index
  end

  def new
  end

# I want to redirect to the home page after sending post request
# where is kopi_params coming from?
  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.save

    # how does this redirect work?
    redirect_to @kopi
  end

  def show
  end

private

# I do not know where this is coming from, somewhere from the models

# /edit I am wrong, :kope_new is referencing kopis/new page and permit values correlates with form.label / form.text_area??
  def kopi_params
    params.require(:kopi_new).permit(:name, :roast)
  end


end