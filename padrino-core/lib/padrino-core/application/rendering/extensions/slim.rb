begin
  require 'slim'

  if defined? Padrino::Rendering
    Padrino::Rendering.engine_configurations[:slim] =
      {:generator => Temple::Generators::RailsOutputBuffer,
       :buffer => "@_out_buf"}

    class Slim::Template
      include Padrino::Rendering::SafeTemplate
    end
  end
rescue LoadError
end