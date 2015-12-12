## This has a fairly harmless hack that wraps the img tag in a div to prevent it from being
## wrapped in a paragraph tag instead, which would totally fuck things up layout-wise
## Usage {% fullwidth 'path/to/image' 'caption goes here in quotes' %}
#
module Jekyll
  class RenderFullWidthTxtTag < Liquid::Block
  
    def initialize(name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "<p style='width: 800px;'>#{p super}</p>"
        
    end
  end
end

Liquid::Template.register_tag('fullwidthtxt', Jekyll::RenderFullWidthTxtTag)
