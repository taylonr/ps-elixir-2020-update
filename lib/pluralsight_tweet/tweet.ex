defmodule PluralsightTweet.Tweet do
    def send(str) do
        ExTwitter.configure(:process,  [
            consumer_key: System.get_env("pluralsight_tweet_twitter_consumer_key"),
            consumer_secret: System.get_env("pluralsight_tweet_twitter_consumer_secret"),
            access_token: System.get_env("pluralsight_tweet_twitter_access_token"),
            access_token_secret: System.get_env("pluralsight_tweet_twitter_access_secret")
        ])

        ExTwitter.update(str)
    end
end
