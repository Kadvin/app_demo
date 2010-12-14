class ApplicationController < ActionController::Base
  MenuLoader.init(:type => :yaml) if not MenuLoader.loaded?
  customize(:all) do |ctx|
    #ctx.skin = 'basic' # default
    ctx.menu = :global_menu
  end
end
