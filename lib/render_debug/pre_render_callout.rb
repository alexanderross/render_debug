module RenderDebug
  module PreRenderCallout
    extend ActiveSupport::Concern
    included do
      alias_method_chain :render, :callout
    end

    def render_with_callout(context, options)
      initial_render = render_without_callout(context, options)
      tag = ""
      if(options[:partial])
        tag = "PARTIAL #{options[:partial]}"
      elsif(options[:template])
        tag = "ACTION #{options[:template]} INVOKED FROM #{context.controller.class.to_s}"
      end

      if(tag.blank?)
        initial_render.html_safe
      else
        "<!-- #{tag} -->#{initial_render}<!-- END #{tag}-->".html_safe
      end
    end
  end
end