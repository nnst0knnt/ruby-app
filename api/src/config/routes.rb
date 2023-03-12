Rails.application.routes.draw do
  # root '{controller#method}' # ルート(/)
  get 'test', to:'test#hello'
  get 'testapi', to:'testapi#hello'
end

