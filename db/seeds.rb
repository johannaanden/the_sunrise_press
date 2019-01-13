Article.destroy_all
Category.destroy_all

Category.create(name: 'Weather')
Category.create(name: 'Sport')
Category.create(name: 'Travel')

Article.create(title: 'The storm is comming', description: 'It is going to rain tomorrow', content: 'It is going to rain alot tomorrow', journalist: 'Johanna', category_id: 1)
Article.create(title: 'No it is not comming !', description: 'It turned out it did not rain at all!', content: 'Shocking really', journalist: 'Greg', category_id: 1)
Article.create(title: 'Arsenal has lost against the Fradi!', description: 'I cannot believe it either!', content: 'The world is amazed by this!', journalist: 'John', category_id: 2)
Article.create(title: 'St Petersburg', description: 'One hour flight', content: 'SAS SK 732!', journalist: 'Hanna', category_id: 3)
Article.create(title: 'привет', description: 'Lorem ipsum', content: 'Cras faucibus gravida venenatis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla velit ligula, aliquet a auctor id, molestie vel nibh. Integer justo arcu, faucibus vel dui at, sagittis aliquet justo. Nunc posuere et tellus ac porta. Quisque eleifend arcu et nunc mattis volutpat. Praesent dignissim feugiat lacus, at interdum nunc laoreet quis. Fusce blandit, quam in pretium viverra, ligula dui sollicitudin velit, sit amet sodales leo magna id eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed at dignissim justo, at auctor sapien. Phasellus et molestie sapien, non fermentum enim. Aliquam sed turpis varius, cursus sapien id, tincidunt eros. Nullam accumsan lorem vitae metus pellentesque eleifend. Vestibulum bibendum quis nisi vitae volutpat. Aliquam nec tempus tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', journalist: 'Hanna', category_id: '5')