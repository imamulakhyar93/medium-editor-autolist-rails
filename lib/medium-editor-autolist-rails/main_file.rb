# frozen_string_literal: true

require 'thor'
class MainFile < Thor
  include Thor::Actions

  desc 'fetch source files', 'fetch source files from GitHub'
  def fetch
    self.destination_root = 'vendor/assets'
    remote = 'https://github.com/varun-raj/medium-editor-autolist'
    get "#{remote}/raw/master/dist/autolist.min.js", 'javascripts/medium-editor-autolist.min.js'
  end
end
