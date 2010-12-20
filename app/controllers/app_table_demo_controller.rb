# 
# = App Table Demostration
#
class AppTableDemoController < ApplicationController
  customize(:all) do |ctx|
    ctx.selected_menu = :staff_menu
    ctx.side_bar = :staff_bar
  end

  #
  # == Browse topics
  # * Frame: GET /app_table_demo/topics
  # * Page:  GET /app_table_demo/topics_page
  browse_as_table :topics, :skin => :endless
  customize(:topics) do |ctx|
    ctx.javascripts << 'endless'
    ctx.stylesheets << 'endless'
  end

  #
  # == Browse posts
  # * Frame: GET /app_table_demo/posts
  # * Page:  GET /app_table_demo/posts_page
  browse_as_table :posts, :skin => :paginate
  customize(:posts) do |ctx|
    ctx.javascripts << 'paginate'
    ctx.stylesheets << 'paginate'
  end
end
