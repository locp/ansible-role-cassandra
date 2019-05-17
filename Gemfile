source 'https://rubygems.org'

group :development do
  # It totally sucks that we're resorting to having a git ref for the otherwise
  # execellent github-changelog-generator.  The reason being that we use the
  # [awesome] release-summary functionality (see
  # https://github.com/github-changelog-generator/github-changelog-generator#using-the-summary-section-feature
  # for details).  This was introduced during 2018, but the last actual release
  # was back in 2016.
  gem 'github_changelog_generator',
      require: false,
      git: 'https://github.com/github-changelog-generator/github-changelog-generator',
      ref: 'e304055bfb2713c5e344c31d5096c0ca1dac346b'
end

group :test do
  gem 'rubocop'
  gem 'travis'
end
