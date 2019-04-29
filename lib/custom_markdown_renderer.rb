require 'middleman-core/renderers/redcarpet'

class CustomMarkdownRenderer < Middleman::Renderers::MiddlemanRedcarpetHTML
  def preprocess(document)
    document = super(document) if defined?(super)
    ERB.new(document).result(binding)
  end
end
