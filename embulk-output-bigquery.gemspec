Gem::Specification.new do |spec|
  spec.name          = "embulk-output-bigquery"
  spec.version       = "0.6.0"
  spec.authors       = ["Satoshi Akama", "Naotoshi Seo"]
  spec.summary       = "Google BigQuery output plugin for Embulk"
  spec.description   = "Embulk plugin that insert records to Google BigQuery."
  spec.email         = ["satoshiakama@gmail.com", "sonots@gmail.com"]
  spec.licenses      = ["MIT"]
  spec.homepage      = "https://github.com/embulk/embulk-output-bigquery"

  # Exclude example directory for generating gem.
  # example dir use symlink.
  # It doesn't work properly on the Windows platform without administrator
  # privilege.
  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"] -
                       Dir["example/*" ]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'google-api-client'
  spec.add_dependency 'time_with_zone'

  spec.add_development_dependency 'bundler', ['>= 1.10.6']
  spec.add_development_dependency 'rake', ['>= 10.0']
end
