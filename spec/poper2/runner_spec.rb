require 'spec_helper'

module Poper2
  describe Runner do
    describe '#run' do
      let(:runner) { Runner.new(commit, 'spec/specrepo.git') }
      subject { runner.run }

      context 'first commit' do
        let(:commit) { '85ae779' }

        its(:count) { should == 3 }
        its(:'first.commit') do
          should == '357c6fa883bb18682770b14168708df1531c958f'
        end
        its(:'first.message') do
          should == 'Git commit message should start with a capital letter'
        end
        its(:'last.commit') do
          should == '85ae779d5da760fb519309eefdbe59bf67240c4d'
        end
        its(:'last.message') do
          should ==
            'Consider writing a more detailed, not as generic, commit message'
        end
      end

      context 'head commit' do
        let(:commit) { 'd0fa2b8' }
        its(:count) { should == 0 }
      end

      context 'may reach to HEAD~2' do
        let(:commit) { 'HEAD~2' }

        its(:'last.commit') do
          should == '85ae779d5da760fb519309eefdbe59bf67240c4d'
        end
      end
    end
  end
end
