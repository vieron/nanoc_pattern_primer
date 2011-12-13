# encoding: utf-8

require 'pattern_primer'
require 'rake'

# Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
Dir[File.dirname(__FILE__) + '/tasks/**/*.rake'].each   { |f| load f }
# Dir[File.dirname(__FILE__) + '/tasks/**/*.rake'].each { |f| Rake.application.add_import(f) }



