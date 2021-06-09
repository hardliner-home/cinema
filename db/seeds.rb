unless Movie.exists?
  Movie.create([
                 { title: 'The Fast and the Furious', imdb_id: 'tt0232500' },
                 { title: '2 Fast 2 Furious', imdb_id: 'tt0322259' },
                 { title: 'The Fast and the Furious: Tokyo Drift', imdb_id: 'tt0463985' },
                 { title: 'Fast & Furious', imdb_id: 'tt1013752' },
                 { title: 'Fast Five', imdb_id: 'tt1596343' },
                 { title: 'Fast & Furious 6', imdb_id: 'tt1905041' },
                 { title: 'Furious 7', imdb_id: 'tt2820852' },
                 { title: 'The Fate of the Furious', imdb_id: 'tt4630562' },
               ])
end

unless User.where(is_admin: true).exists?
  User.create(email: 'admin@gmail.com', password: '123456', is_admin: true)
end

unless User.where(is_admin: false).exists?
  User.create(email: 'client@gmail.com', password: '123456')
end

