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
  customize(:topics){|ctx| ctx.javascripts << 'endless'}

  def new

  end

  def create
    
  end
end
