require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "FirebaseAppInstanceId"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-firebase-app-instance-id
                   DESC
  s.homepage     = "https://github.com/szhigunov/react-native-firebase-app-instance-id"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Sergey Zhigunov" => "i.sergey.zhigunov@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/szhigunov/react-native-firebase-app-instance-id.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "Firebase/Core"
  s.dependency "Firebase/Analytics"
end
