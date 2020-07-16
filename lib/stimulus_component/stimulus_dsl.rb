module StimulusComponent
  module StimulusDsl
    def initialize_controller
      "data-controller=#{controller}"
    end

    def action(event_type, controller, controller_method)

      "data-action=#{event_type}->#{controller.to_s.underscore}##{controller_method}"
    end

    def data_target(controller, property)
      "data-target=#{controller}.#{property}"
    end

    def data_attribute(attribute, value)
      "data-content-#{dasherize(attribute)}=#{value}"
    end
  end
end
