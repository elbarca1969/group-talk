module TweetsHelper
  def tweet_time(time)
    time < 1.week.ago ? l(time) : time_ago_in_words(time)
  end
end
