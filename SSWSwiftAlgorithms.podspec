Pod::Spec.new do |s|

  s.name = "SSWSwiftAlgorithms"
  s.version = "0.1.1"
  s.summary = "An implementation of the Swift Algorithm Club's algorithms."
  s.description = <<-DESC
A fully tested implementation of the Swift Algorithm Club's algorithms. This library provides an easy
way for you to use the Swift Algorithm Club's algorithms in your code. 

Current this pod supports: Stack.
DESC
  s.homepage = "https://github.com/waynemock/ssw-swift-algorithms"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "Wayne Mock" => "syzygysoftwerks@gmail.com" }
  s.social_media_url = "http://twitter.com/wayne_mock"
  s.platforms = { :ios => "10.0", :osx => "10.12", :tvos => "10.0", :watchos => "3.0" }
  s.swift_version = "4"
  s.source = { :git => "https://github.com/waynemock/ssw-swift-algorithms.git", :tag => "#{s.version}" }
  s.source_files = "SwiftAlgorithms/**/*.{swift}"
  s.requires_arc = true
end

