# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.create([
    {title: "The Power of Meaning" , author: "Emily Esfahani Smith", img_url: "https://images.gr-assets.com/books/1465653308l/30008950.jpg", description: "This wise, stirring book argues that the search for meaning can immeasurably deepen our lives and is far more fulfilling than the pursuit of personal happiness."}, 
    {title: "Designing Your Life" , author: "Bill Burnett, Dave Evans", img_url: "https://images.gr-assets.com/books/1476133952l/26046333.jpg", description: "Whether we’re 20, 40, 60 or older, many of us are still looking for an answer to that perennial question, ‘What do you want to be when you grow up?’ In Designing Your Life, Silicon Valley design innovators Bill Burnett and Dave Evans use their expertise to help you work out what you want – and how to get it."}, 
    {title: "The Arabian Nights" , author: "Wafa' Tarnowska", img_url: "https://images.gr-assets.com/books/1347497895l/7959757.jpg", description: "Lebanese author Wafa' Tarnowska opens a window onto the Arab world with her magnificent new translation of eight stories from A Thousand and One Nights. This edition is notable for combining favourites such as 'Aladdin and the Wonderful Lamp' with less familiar tales such as 'The Diamond Anklet' and 'The Speaking Bird and the Singing Tree'. "}, 

])
