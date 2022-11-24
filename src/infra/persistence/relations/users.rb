require 'rom'

module Infra
  module Persistence
    module Relations
      class Users < ROM::Relation[:sql]
        # gateway :default

        schema :users do
          attribute :id, ROM::Types::Integer
          attribute :name, ROM::Types::String
          attribute :age, ROM::Types::Integer
          primary_key :id
        end

      end
    end
  end
end
