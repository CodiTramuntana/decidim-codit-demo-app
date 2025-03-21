# frozen_string_literal: true

Rails.application.routes.draw do
  mount Decidim::Core::Engine => "/"
  mount Decidim::FileAuthorizationHandler::AdminEngine => "/admin"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
