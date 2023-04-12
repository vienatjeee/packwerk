# typed: strict
# frozen_string_literal: true

module Packwerk
  class Cli
    class BaseCommand
      extend T::Sig
      extend T::Helpers
      abstract!

      sig { params(cli: Cli, args: T::Array[String]).void }
      def initialize(cli, args)
        @cli = cli
        @args = args
      end

      sig { abstract.returns(Result) }
      def run; end
    end
  end
end
