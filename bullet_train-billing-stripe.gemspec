require_relative "lib/bullet_train/billing/stripe/version"

Gem::Specification.new do |spec|
  spec.name = "bullet_train-billing-stripe"
  spec.version = BulletTrain::Billing::Stripe::VERSION
  spec.authors = ["Andrew Culver"]
  spec.email = ["andrew.culver@gmail.com"]
  spec.homepage = "https://github.com/andrewculver/bullet_train-billing-stripe"
  spec.summary = "Bullet Train Billing for Stripe"
  spec.description = spec.summary
  spec.license = "Nonstandard"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 6.0.0"
  spec.add_dependency "bullet_train"
  spec.add_dependency "bullet_train-billing"
end
