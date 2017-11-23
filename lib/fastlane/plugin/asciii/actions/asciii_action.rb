module Fastlane
  module Actions
    class AsciiiAction < Action
      def self.run(params)
        message = params[:message]
        require 'artii'
        a = Artii::Base.new
        UI.message("\n" + a.asciify(message))
      end

      def self.description
        "Add ascii text to your fastlane output"
      end

      def self.authors
        ["Danielle Tomlinson"]
      end

      def self.return_value
      end

      def self.details
        self.description
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :message,
                                  env_name: "ASCIII_MESSAGE",
                               description: "The message to be rendered as ASCII",
                                  optional: false,
                                      type: String)
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
