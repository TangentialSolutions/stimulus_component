require "spec_helper"

class HelperClass
  include StimulusComponent::StimulusDsl
end

RSpec.describe StimulusComponent::StimulusDsl do
  subject { HelperClass.new }

  describe "#initialize_controller" do
    it "should return the controller data attribute" do
      expected_controller_id = "test_identifier"
      expect(subject).to receive(:controller).and_return expected_controller_id
      expect(subject.initialize_controller).to eq "data-controller=#{expected_controller_id}"
    end
  end

  describe "#action" do
    it "should return the action data attribute" do
      expect(subject.action(:click, :reference, :method)).to eq "data-action=click->reference#method"
    end
  end

  describe "#data_target" do
    it "should return the target data attribute" do
      expect(subject.data_target("reference", "property")).to eq "data-target=reference.property"
    end
  end

  describe "#data_map" do
    it "should return the content data attribute" do
      expect(subject.data_map(:attr, :val)).to eq "data-attr=val"
    end
  end
end