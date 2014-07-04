base_directory = File.expand_path(File.join(File.dirname(__FILE__), '..'))
MathSass_stylesheets_path = File.join(base_directory, 'dist')

if (defined? Compass)
  Compass::Frameworks.register('MathSass', :stylesheets_directory => MathSass_stylesheets_path)
else
  # compass not found, register on the Sass path via the environment.
  if ENV.has_key?("SASS_PATH")
    ENV["SASS_PATH"] = ENV["SASS_PATH"] + File::PATH_SEPARATOR + MathSass_stylesheets_path
  else
    ENV["SASS_PATH"] = MathSass_stylesheets_path
  end
end
