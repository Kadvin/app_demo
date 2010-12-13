class DemoController < ApplicationController

  customize(:all) do |ctx|
    ctx.selected_menu = :staff_menu
  end

  customize(:index) do |ctx|
    # You can specify a side bar name as side_bar for 
    #  the view component(sidebar) placed on the page's left position
    ctx.side_bar = :staff_bar
    ctx.structure.main.left.side_bar = :staff_bar
    #ctx.structure.header.right = 'welcome'
    # or it will use the global side bar in current app context

    #ctx.structure.main.right  = :help_bar
    #ctx.structure.main.right.help   = :help_group
  end

  def index
  end
end
