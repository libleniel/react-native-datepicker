require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = package_json["name"]
  s.version        = package_json["version"]
  s.summary        = package_json["description"]
  s.homepage       = package_json["homepage"]
  s.license        = package_json["license"]
  s.author         = { package_json["author"] => package_json["author"] }
  s.platform       = :ios, "8.0"
  s.source         = { :git => "#{package_json["repository"]["url"]}", :tag => 'v1.4.3-3' }
  s.dependency 'React'

end
