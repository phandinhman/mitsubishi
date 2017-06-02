namespace :grape do
  desc "routes"
  task :routes => :environment do
    API::V1.routes.map { |route| puts "#{route} \n" }
  end
end
