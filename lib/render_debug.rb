require 'rails'
module RenderDebug
  autoload :PreRenderCallout, "render_debug/pre_render_callout"
end

require 'render_debug/railtie'