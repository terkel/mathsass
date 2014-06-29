base_directory = File.expand_path(File.join(File.dirname(__FILE__), '..'))
mathsass_stylesheets_path = File.join(base_directory, 'dist')

if (defined? Compass)
  Compass::Frameworks.register('MathSass', :stylesheets_directory => mathsass_stylesheets_path)
else
  # compass not found, register on the Sass path via the environment.
  if ENV.has_key?("SASS_PATH")
    ENV["SASS_PATH"] = ENV["SASS_PATH"] + File::PATH_SEPARATOR + mathsass_stylesheets_path
  else
    ENV["SASS_PATH"] = mathsass_stylesheets_path
  end
end

#  Version is a number. If a version contains alphas, it will be created as a prerelease version
#  Date is in the form of YYYY-MM-DD
module MathSass
  VERSION = "0.9.2"
  DATE = "2013-10-26"
end
