Rails.logger.info("Init the Menu Loader...")
I18n.locale = 'zh-cn' # I18n.default_locale doest not effect
MenuLoader.init(:type => :yaml)