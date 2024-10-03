module DecentExposure
  module Mailer
    def self.included(base)
      base.class_eval do
        attr_accessor :params

        def process_action(*args, **kwargs)
          self.params = kwargs.stringify_keys
          super
        end
      end
    end
  end
end
