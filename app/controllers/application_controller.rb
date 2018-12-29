class ApplicationController < ActionController::Base

  #LEWAGON SOLUTION lo hacemos para evitar
  #ataques hackers NO OLVIDAR!
  protect_from_forgery with: :exception
end
