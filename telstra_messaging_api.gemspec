Gem::Specification.new do |s|
  s.name = 'telstra_messaging_api'
  s.version = '2.2.3'
  s.summary = 'telstra_messaging_api'
  s.description = ' The Telstra SMS Messaging API allows your applications to send and receive SMS text messages from Australia\'s leading network operator.  It also allows your application to track the delivery status of both sent and received SMS messages. '
  s.authors = ['APIMatic SDK Generator']
  s.email = 'support@apimatic.io'
  s.homepage = 'https://apimatic.io'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.0')
  s.add_dependency('faraday', '~> 0.10.0')
  s.add_dependency('test-unit', '~> 3.1.5')
  s.add_dependency('certifi', '~> 2016.9', '>= 2016.09.26')
  s.add_dependency('faraday-http-cache', '~> 1.2', '>= 1.2.2')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
