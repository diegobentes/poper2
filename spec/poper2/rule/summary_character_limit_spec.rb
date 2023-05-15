require 'spec_helper'

module Poper2
  module Rule
    describe SummaryCharacterLimit do
      describe '#check' do
        let(:rule) { SummaryCharacterLimit.new }
        subject { rule.check(msg) }

        context 'fifty char summary' do
          let(:msg) { 'Implement that feature - really really really well' }
          it { should be_nil }
        end

        context 'fifty-one char summary' do
          let(:msg) { 'Implement that feature - really really really well.' }
          it { should_not be_nil }
        end

        context 'fifty char summary with a newline' do
          let(:msg) { "Implement that feature - really really really well\n" }
          it { should be_nil }
        end
      end
    end
  end
end
