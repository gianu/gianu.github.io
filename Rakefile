require 'date'

task default: [:post]

task :post do
  date = DateTime.now.strftime("%Y-%m-%d")
  title = ENV['title'] || "empty title"

  filename = title.downcase.strip.gsub(" ", "-")
  filename = date + "-" + filename + ".markdown"

  File.open("_posts/#{filename}", "w") do |file|
    file.write("---\n")
    file.write("layout: post\n")
    file.write("title: #{title}\n")
    file.write("---\n\n")
  end

  puts "Post #{filename} created"
end

task :compile do
  pids = [
    spawn("coffee -b -o js -c assets/*.coffee")
  ]

  trap "INT" do
    Process.kill "INT", *pids
    exit 1
  end
end
