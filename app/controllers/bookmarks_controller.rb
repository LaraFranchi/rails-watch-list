class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(review_params)

    if @bookmark.save
      redirect_to (@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @boomark.destroy
    # redirect_to movie_path(@bookmark.movie), status: :see_other
  end
end

# GET new
# assigns a new bookmark to @bookmark (FAILED - 1)
# POST create
# with valid params
#   creates a new bookmark (FAILED - 2)
#   assigns a newly created bookmark as @bookmark (FAILED - 3)
#   redirects to the created list (FAILED - 4)
# with invalid params
#   assigns a newly created but unsaved bookmark as @bookmark (FAILED - 5)
#   re-renders the 'new' template or 'lists/show' (FAILED - 6)
# DELETE destroy
# deletes a bookmark (FAILED - 7)
