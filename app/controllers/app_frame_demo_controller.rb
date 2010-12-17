class AppFrameDemoController < ApplicationController

  customize(:all) do |ctx|
    ctx.selected_menu = :staff_menu
    ctx.side_bar = :staff_bar
  end

  customize(:index) do |ctx|
    # You can specify a side bar name as side_bar for 
    #  the view component(sidebar) placed on the page's left position
    ctx.structure.main.left = :side_bar
    #ctx.structure.header.right = 'welcome'
    # or it will use the global side bar in current app context

    #ctx.structure.main.right  = :help_bar
    #ctx.structure.main.right.help   = :help_group
  end

  customize(:new, :edit) do |ctx|
    ctx.side_bar = :admin_bar
    ctx.struct.main.left = nil
    ctx.struct.main.right = :side_bar
  end

  customize(:edit){|ctx| ctx.struct.main.top = ctx.struct.main.bottom = nil}

  customize(:show) do |ctx|
    ctx.struct.main.left = :side_bar
    ctx.struct.main.left.locals.side_bar = :leader_bar
    ctx.struct.main.right = :help_bar
    ctx.struct.main.right.locals.help = :help_group
  end

  def index; end
  def new; end
  def edit; end
  def show; end
end
