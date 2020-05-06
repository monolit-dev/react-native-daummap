require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "daummap"
  s.version      = package['version']
  s.summary      = "Daum Map Module for React Native (iOS and Android)"

  s.authors      = { "author" => "JeongHun Kang <asata@teamsf.co.kr>" }
  s.homepage     = "https://github.com/monolit-dev/react-native-daummap"
  s.license      = package['license']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/monolit-dev/react-native-daummap.git", :tag => "#{s.version}" }
  s.source_files = "ios/**/*.{h,m}"

  s.static_framework = true

  s.dependency 'React'
end

