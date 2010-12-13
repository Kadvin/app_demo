class ApplicationController < ActionController::Base
  customize(:all) do |ctx|
    #ctx.skin = 'basic' # default
    ctx.menu = :global_menu
  end
end
