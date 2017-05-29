class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  include ApplicationHelper

  def hello
    render html: "'Sup y'all?"
  end
end
