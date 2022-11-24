require 'rom'

module Infra
  module Persistence
    module Repository
      class Users < ROM::Repository[:users]
        struct_namespace Domain::Entity
        commands :create, update: :by_pk, delete: :by_pk

        def find_by_id!(id)
          users.by_pk(id).one!
        end
      end
    end
  end
end
