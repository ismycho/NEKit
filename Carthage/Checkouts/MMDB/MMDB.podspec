Pod::Spec.new do |s|
  s.name         = "MMDB"
  s.version      = "0.5.5"
  s.summary      = "A wrapper for MaxMind DB"
  s.description  = <<-DESC
                   A tiny wrapper for libmaxminddb which allows you to lookup
                   Geo data by IP address.
                   DESC

  s.homepage     = "https://github.com/ismycho/MMDB"

  s.license      = { :type => "APACHE 2.0", :file => "LICENSE" }

  s.author             = { "ismycho" => "khw0212@hanmail.net" }

  s.platform     = :ios, :osx

  s.swift_version = "5.0"
  s.ios.deployment_target = "13.0"
  s.osx.deployment_target = "11.10"

  s.source       = { :git => "https://github.com/ismycho/MMDB.git",
                     :tag => s.version }

  s.source_files  = "Sources/MMDB.swift", "Sources/libmaxminddb/*.{h,c}"
  s.ios.public_header_files = "Sources/libmaxminddb/*.h", "Sources/MMDB.h"
  s.osx.public_header_files = "Sources/libmaxminddb/*.h", "Sources/MMDB.h"

  s.framework  = "Foundation"
  s.requires_arc = true
end
