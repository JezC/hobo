# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hobofields}
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tom Locke"]
  s.date = %q{2011-02-25}
  s.email = %q{tom@tomlocke.com}
  s.files = [
    "CHANGES.txt",
    "LICENSE.txt",
    "README.txt",
    "Rakefile",
    "hobofields.gemspec",
    "lib/hobo_fields.rb",
    "lib/hobo_fields/email_address.rb",
    "lib/hobo_fields/enum_string.rb",
    "lib/hobo_fields/field_declaration_dsl.rb",
    "lib/hobo_fields/field_spec.rb",
    "lib/hobo_fields/fields_declaration.rb",
    "lib/hobo_fields/html_string.rb",
    "lib/hobo_fields/index_spec.rb",
    "lib/hobo_fields/lifecycle_state.rb",
    "lib/hobo_fields/markdown_string.rb",
    "lib/hobo_fields/migration_generator.rb",
    "lib/hobo_fields/model_extensions.rb",
    "lib/hobo_fields/password_string.rb",
    "lib/hobo_fields/raw_html_string.rb",
    "lib/hobo_fields/raw_markdown_string.rb",
    "lib/hobo_fields/sanitize_html.rb",
    "lib/hobo_fields/serialized_object.rb",
    "lib/hobo_fields/text.rb",
    "lib/hobo_fields/textile_string.rb",
    "lib/hobofields.rb",
    "rails/init.rb",
    "rails_generators/hobo_migration/USAGE",
    "rails_generators/hobo_migration/hobo_migration_generator.rb",
    "rails_generators/hobo_migration/templates/migration.rb",
    "rails_generators/hobofield_model/USAGE",
    "rails_generators/hobofield_model/hobofield_model_generator.rb",
    "rails_generators/hobofield_model/templates/fixtures.yml.erb",
    "rails_generators/hobofield_model/templates/model.rb.erb",
    "rails_generators/hobofield_model/templates/test.rb.erb",
    "script/destroy",
    "script/generate",
    "test/hobofields.rdoctest",
    "test/hobofields_api.rdoctest",
    "test/migration_generator.rdoctest",
    "test/migration_generator_primary_key.rdoctest",
    "test/rich_types.rdoctest",
    "test/test_generator_helper.rb",
    "test/test_hobofield_model_generator.rb"
  ]
  s.homepage = %q{http://hobocentral.net/}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{hobo}
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{Rich field types and migration generator for Rails}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 2.2.2", "< 3.0.0"])
      s.add_runtime_dependency(%q<hobosupport>, ["= 1.0.3"])
    else
      s.add_dependency(%q<rails>, [">= 2.2.2", "< 3.0.0"])
      s.add_dependency(%q<hobosupport>, ["= 1.0.3"])
    end
  else
    s.add_dependency(%q<rails>, [">= 2.2.2", "< 3.0.0"])
    s.add_dependency(%q<hobosupport>, ["= 1.0.3"])
  end
end
