# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def version
    style = "style='background-color:red;'" unless session[:datetime].blank?
    "Pharmacy #{app_version} - <span #{style}>#{(session[:datetime].to_date rescue Date.today).strftime('%A, %d-%b-%Y')}</span>"
  end

  def welcome_message
    "Muli bwanji, enter your user information or scan your id card. <span style='font-size:0.6em;float:right'>(#{version})&nbsp;&nbsp;&nbsp;&nbsp;</span>"
  end

  def app_version
      `git describe`.gsub(/\n/, '')
  end
end
