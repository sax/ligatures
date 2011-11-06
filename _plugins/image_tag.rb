module Jekyll

  class ImageTag < Liquid::Tag
    attr_reader :src

    def initialize(tag_name, src, tokens)
      super
      @src = src
    end

    def render(context)
      %Q{<img src="#{src}" />}
    end
  end

end

Liquid::Template.register_tag('image', Jekyll::ImageTag)
