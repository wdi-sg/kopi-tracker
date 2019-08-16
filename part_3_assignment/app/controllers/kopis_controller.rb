class KopisController < ApplicationController

  def index
    @kopis = Kopi.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
    end

    def destroy
    end

    private
      def method_name
        require(......).permit(.......)
      end

end