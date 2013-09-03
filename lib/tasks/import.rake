require 'csv'

namespace :import do
  task team: :environment do
    CSV.foreach("#{::Rails.root}/doc/team.csv", headers: true) do |row|
      p row.to_hash
      p Team.create(row.to_hash)
    end
  end
end