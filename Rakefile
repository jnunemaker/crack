# frozen_string_literal: true

require "bundler/gem_tasks"

# `rake release` builds, tags and pushes the tag. GitHub Actions
# (.github/workflows/release.yml) publishes the gem to RubyGems.
ENV["gem_push"] ||= "no"
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/**/*_test.rb']
  t.verbose = false
  t.warning = true
end

task default: :test
