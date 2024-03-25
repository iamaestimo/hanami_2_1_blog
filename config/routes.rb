# frozen_string_literal: true

module HanamiBlogApp
  class Routes < Hanami::Routes
    root to: "home.show"
    get "/posts/:id", to: "posts.show"
  end
end
