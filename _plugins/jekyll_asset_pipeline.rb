require 'japr'
module JAPR
    class LessConverter < JAPR::Converter
      require 'less'

      def self.filetype
        '.less'
      end

      def convert
        return Less::Parser.new.parse(@content).to_css
      end
    end

	  class CssCompressor < JAPR::Compressor
	    require 'yui/compressor'

	    def self.filetype
	      '.css'
	    end

	    def compress
	      return YUI::CssCompressor.new.compress(@content)
	    end
	  end

	  class JavaScriptCompressor < JAPR::Compressor
	    require 'yui/compressor'

	    def self.filetype
	      '.js'
	    end

	    def compress
	      return YUI::JavaScriptCompressor.new(munge: true).compress(@content)
	    end
	  end
end