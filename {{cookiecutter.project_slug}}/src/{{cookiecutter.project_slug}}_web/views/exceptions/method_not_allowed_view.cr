module {{cookiecutter.module_slug}}Web
  module Views
    module Exceptions
      class MethodNotAllowedView
        def self.render_default(context)
          context
            .json(
              {
                "errors" => [
                  context.exception.to_s
                ]
              }
            )
        end
      end
    end
  end
end