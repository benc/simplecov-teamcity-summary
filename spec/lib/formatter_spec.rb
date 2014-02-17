require 'spec_helper'

describe SimpleCov::Formatter::TeamcitySummaryFormatter do
  describe "#format" do
    before do 
      expect_any_instance_of(described_class).to receive(:format_teamcity).with(:arg).and_return(:return_value)
      expect_any_instance_of(described_class).to receive(:puts).with(:return_value)
    end
    subject { described_class.new.format(:arg) }
    it { expect(subject).to be_nil }
  end
  
  describe "#format_teamcity" do
    let(:simplecov_result) { OpenStruct.new({covered_percent: '12.34567', covered_lines: '1234', total_lines: '5678' })}
    let(:open_block) { "##teamcity[blockOpened name='Code Coverage Summary']" }
    let(:coverage_percent) { "##teamcity[buildStatisticValue key='CodeCoverageL' value='12.34567']" }
    let(:covered_lines) { "##teamcity[buildStatisticValue key='CodeCoverageAbsLCovered' value='1234']" }
    let(:total_lines) { "##teamcity[buildStatisticValue key='CodeCoverageAbsLTotal' value='5678']" }
    let(:close_block) { "##teamcity[blockClosed name='Code Coverage Summary']" }

    subject { described_class.new.format_teamcity(simplecov_result) }

    it { expect(subject).to include(open_block) }
    it { expect(subject).to include(coverage_percent) }
    it { expect(subject).to include(covered_lines) }
    it { expect(subject).to include(total_lines) }
    it { expect(subject).to include(close_block) }
  end
end
