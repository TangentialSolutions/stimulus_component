require "spec_helper"

class HelperClass
  include StimulusComponent::StimulusDsl
end

RSpec.describe StimulusComponent::StimulusDsl do
  describe "#initialize_controller" do
    xit "should return the controller data attribute"
  end

  describe "#action" do
    xit "should return the action data attribute"
  end

  describe "#data_target" do
    xit "should return the target data attribute"
  end

  describe "#data_attribute" do
    xit "should return the content data attribute"
  end
end