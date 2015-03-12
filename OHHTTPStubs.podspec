Pod::Spec.new do |s|

  s.name         = "OHHTTPStubs"
  s.version      = "4.0.0"

  s.summary      = "Stubbing framework for network requests."
  s.description  = <<-DESC.gsub(/^ +\|/,'')
                    |A class to stub network requests easily:
                    |
                    | * Test your apps with fake network data (stubbed from file)
                    | * Use customized stubs depending on the requests
                    | * Use custom response time to simulate slow network.
                 DESC

  s.homepage     = "https://github.com/AliSoftware/OHHTTPStubs"
  s.license      = "MIT"
  s.authors      = { 'Olivier Halligon' => 'olivier.halligon+ae@gmail.com' }



  s.source       = { :git => "https://github.com/AliSoftware/OHHTTPStubs.git", :tag => s.version.to_s }

  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files = "OHHTTPStubs/Sources/*.{h,m}"
    ss.public_header_files = "OHHTTPStubs/Sources/*.h"
  end
  
  s.subspec 'XCTestExpectation' do |ss|
    ss.source_files = "OHHTTPStubs/XCTestExpectation+Xcode5/*.{h,m}"
    ss.public_header_files = "OHHTTPStubs/XCTestExpectation+Xcode5/*.h"
    ss.frameworks = 'XCTest'
  end

  s.frameworks = 'Foundation', 'CFNetwork'

  s.requires_arc = true
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  s.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'XCODE_VERSION=$(XCODE_VERSION_MAJOR)' }

end
