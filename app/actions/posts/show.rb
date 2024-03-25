# frozen_string_literal: true

module HanamiBlogApp
  module Actions
    module Posts
      class Show < HanamiBlogApp::Action
        include Deps[
                  repo: 'repositories.posts'
                ]

        def handle(request, response)
          requested_post = request.params[:id] # first get the id from params...
          post = repo.by_id(requested_post) # ..then fetches the respective post referencing the id present in params
          response.render(view, post: post)
        end
      end
    end
  end
end
