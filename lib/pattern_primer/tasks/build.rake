namespace :pattern_primer do
  
  desc 'Pattern Primer build skeleton'
  
  task :build do
    
    sh "cp -R #{File.dirname(__FILE__)}/../nanoc/* ."
    puts 'Copied files!'
    
  end

end