require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |spec|
  spec.name = package['name']
  spec.version = package['version']
  spec.summary = package['description']
  spec.license = package['license']

  spec.authors = package['author']
  spec.homepage = package['homepage']
  spec.platform = :ios, "9.0"

  spec.source = {
    :git => "https://github.com/marcoonroad/react-native-album-list.git",
    :tag => "v#{spec.version}",
  }
  spec.source_files = "ios/**/*.{h,m}"

  spec.dependency 'React'
end
