class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Changes the URL to reflect the current locale
  def default_url_options
    {locale: I18n.locale}
  end

  before_action :set_locale

  # Sets the locale of the page to the one in the URL
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default
  end

end
