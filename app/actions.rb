#this stuff was from before Week 2 Day 2
# get '/' do
#     File.read(File.join('app/views', 'index.html'))
# end

def humanized_time_ago(time_ago_in_minutes)
    if time_ago_in_minutes > 60
        "#{time_ago_in_minutes/60} hours ago"
        #this was my personal addition
    elsif time_ago_in_minutes == 60
        "an hour ago"
        #as was this
    elsif time_ago_in_minutes == 1
        "a minute ago"
        #and this
    elsif time_ago_in_minutes < 1
        "less than a minute ago"
    else
        "#{time_ago_in_minutes} minutes ago"
    end
end

get '/' do
    finstagram_post = {
        username: "sharky_j",
        avatar_url: "http://naserca.com/images/sharky_j.jpg",
        photo_url: "http://naserca.com/images/shark.jpg",
        time_ago_in_minutes: 15,
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "sharky_j:",
            text: "Out for the long weekend... too embarrassed to show y'all the beach bod!"
        }]
    }
    humanized_time_ago(finstagram_post[:time_ago_in_minutes])
end