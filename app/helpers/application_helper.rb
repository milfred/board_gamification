module ApplicationHelper
  def average_rating
    sum = @reviews.map { |review| review.rating }.reduce(:+)
    average = sum / @reviews.length.to_f
    average.round(2)
  end
end
