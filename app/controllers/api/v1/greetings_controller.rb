# frozen_string_literal: true

module Api
  module V1
    class GreetingsController < ApplicationController # rubocop:todo Style/Documentation
      def index
        @greetings = Greeting.find(rand(1..Greeting.count))
        render json: @greetings
      end
    end
  end
end
