require 'rom-repository'

module HanamiBlogApp
  module Repositories
    class Posts < ::HanamiBlogApp::Repository[:posts]
      def by_id(id)
        posts.where(id:).one!
      end
    end
  end
end