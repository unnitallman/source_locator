#!/usr/bin/env ruby

require 'source_locator'

storage = SourceLocator::Dictionary.new
storage.build

locater = SourceLocator::Locater.new(storage, ARGV[0])
results = locater.find

editor = SourceLocator::Editors::SublimeText.new
editor.open results
