module RenderDebug
  class Railtie < Rails::Railtie
    initializer "render_debug.setup" do |app|
      ActiveSupport.on_load(:action_view) do
        ActionView::Renderer.send(:include, RenderDebug::PreRenderCallout)
      end
    end
  end
end