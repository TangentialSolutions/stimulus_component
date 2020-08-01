module StimulusComponent
  class StimulusController < ::ViewComponent::Base
    with_content_areas :root_actions, :root_targets, :root_content

    include StimulusComponent::StimulusDsl

    def initialize(controller:, actions: [])
      @controller = controller
      @actions = actions
    end

    private

    attr_reader :controller, :actions

    def action_attributes
      action_string = ""
      actions.each do |action_details|
        action_string += action(action_details[:event_type], action_details[:controller], action_details[:controller_method])
      end

      action_string
    end

    def controller_id
      controller.underscore
    end

    def controller_class
      controller.underscore.split("_").map(&:capitalize).join
    end
  end
end