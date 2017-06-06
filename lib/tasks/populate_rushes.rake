namespace :rush_db do
  desc 'Populate the Rush db with data from rushing.json'
  task populate_rush: :environment do
    Rush.delete_all
    JSON.parse(File.read('public/rushing.json')).each do |rush_stat|
      yds = rush_stat["Yds"].is_a?(Integer) ? rush_stat["Yds"] : rush_stat["Yds"].gsub(/\D/, '').to_i
      Rush.create(
        player: rush_stat["Player"],
        team: rush_stat["Team"],
        pos: rush_stat["Pos"],
        att: rush_stat["Att"],
        att_per_g: rush_stat["Att/G"],
        yds: yds,
        avg: rush_stat["Avg"],
        yds_per_g: rush_stat["Yds/G"],
        td: rush_stat["TD"],
        lng: rush_stat["Lng"],
        first: rush_stat["1st"],
        first_percent: rush_stat["1st%"],
        twenty_plus: rush_stat["20+"],
        forty_plus: rush_stat["40+"],
        fum: rush_stat["FUM"]
      )
    end
  end
end

