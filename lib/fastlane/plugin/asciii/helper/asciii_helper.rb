module Fastlane
  module Helper
    class AsciiiHelper
      # class methods that you define here become available in your action
      # as `Helper::AsciiiHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the asciii plugin helper!")
      end
    end
  end
end
