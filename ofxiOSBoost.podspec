Pod::Spec.new do |s|
  s.name         = "ofxiOSBoost"
  s.version      = "1.58.1"
  s.summary      = "Boost C++ library"
  s.description  = <<-DESC
Boost is the library that can (and should) be used to ease c++ development.
                   DESC
  s.homepage     = "http://www.boost.org"
  s.license      = {:type => 'Boost', :file => 'LICENSE.md'}
  s.author       = { "Danoli3" => "danoli3@gmail.com" }


  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.requires_arc = false
  
  s.source_files = "libs/boost/include/**/*.{h,hpp,ipp}"
  s.header_mappings_dir = "libs/boost/include"
  s.public_header_files = "libs/boost/include/**/*.{h,hpp,ipp}"

  s.preserve_paths = "libs/boost/include/*","libs/boost/include/**/*", "libs/boost/ios/**/*.a"
  s.vendored_libraries = "libs/boost/ios/**/*.a"
  s.library = 'z'
  
  s.source = { :http => "http://www.l18.io/boost/libs-1.58.1.zip" }
end
