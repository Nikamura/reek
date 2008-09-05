namespace :samples do
  Dir['samples/*.rb'].each do |f|
    fn = File.basename(f)
    desc "run reek on sample #{fn}"
    task fn do
      sh "ruby -Ilib bin/reek #{f}"
    end
    task :all => fn
  end
  
  desc 'run all samples'
  task :all

end
