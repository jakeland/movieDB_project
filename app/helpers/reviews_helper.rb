module ReviewsHelper
  def create_or_edit_review_path(movie)
    user_review = current_user.movie_review(movie) if user_signed_in?

    if user_signed_in? && user_review.present?
      link_to "Edit review", edit_movie_review_path(movie.id, user_review.id)
    else
      link_to "Write a review", new_movie_review_path(movie.id)
    end
  end
end