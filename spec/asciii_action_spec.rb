describe Fastlane::Actions::AsciiiAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The asciii plugin is working!")

      Fastlane::Actions::AsciiiAction.run(nil)
    end
  end
end
