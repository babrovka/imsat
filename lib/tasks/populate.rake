require 'csv'
require 'faker'
require 'populator'

namespace :create do
  desc "Create DB data"
  
  task :products => :environment do
    Product.destroy_all
    Product.populate 7..15 do |o|
      o.name = Populator.words(1.2)
      o.description = Populator.sentences(30..50)
    end
    puts "Products created!"
  end
  
  task :solutions => :environment do
    Solution.destroy_all
    Solution.populate 7..15 do |o|
      o.name = Populator.words(1.2)
      o.description = Populator.sentences(30..50)
    end
    puts "Solutions created!"
  end
  
  task :aids => :environment do
    Aid.destroy_all
    Aid.populate 7..15 do |o|
      o.name = Populator.words(1.2)
      o.description = Populator.sentences(30..50)
    end
    puts "Aids created!"
  end
  
end