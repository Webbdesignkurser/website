require 'digest/md5'

module Jekyll
  module ShortFilter
    def short(input)
      hash = Digest::MD5.hexdigest(@context.registers[:site].config['url'] + input.downcase.strip).slice(0..4)
      "#{hash}"
    end
  end
end

Liquid::Template.register_filter(Jekyll::ShortFilter)