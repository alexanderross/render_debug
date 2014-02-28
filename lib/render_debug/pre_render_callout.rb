module RenderDebug
  module PreRenderCallout
    extend ActiveSupport::Concern
    included do
      alias_method_chain :render, :callout
    end

    def render_with_callout(context, options, block)
      initial_render = render_without_callout(context, options, block)
      if(@path)
        "<!-- TEMPLATE : #{@path} -->#{initial_render}<!-- END TEMPLATE #{@path}-->".html_safe
      else
        "<!-- TEMPLATE : ??? -->#{initial_render}<!-- END TEMPLATE ???-->".html_safe
      end
    end
  end
end