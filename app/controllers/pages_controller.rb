class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create 
    @page = Page.new(page_params)
    # debugger

    if @page.save
      redirect_to @page
    else 
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def page_params
      params.require(:page).permit(:name, :brand, :size, :condition, :box, :image, :price1, :price2)
    end
end
