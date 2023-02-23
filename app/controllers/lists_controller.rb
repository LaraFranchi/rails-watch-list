class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
  end

  def show
    @list = List.find(params[:id])
  end
end





# GET index
# assigns all lists as @lists (FAILED - 8)
# GET show
# assigns the requested list as @list (FAILED - 9)
# GET new
# assigns a new list as @list (FAILED - 10)
# POST create
# with valid params
#   creates a new List (FAILED - 11)
#   assigns a newly created list as @list (FAILED - 12)
#   redirects to the created list (FAILED - 13)
# with invalid params
#   assigns a newly created but unsaved list as @list (FAILED - 14)
#   re-renders the 'new' template (FAILED - 15)
