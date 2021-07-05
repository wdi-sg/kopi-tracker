# kopi-tracker


You are working at a kopi roastery. Create a rails app that tracks kopis.

Use this rails new command so that you can create an app inside this repo: (you must already be cd'd inside this repo)

```bash
rails _5.2.3_ new . -d postgresql --skip-turbolinks --skip--coffee --skip-git
```

![](https://media.giphy.com/media/l3vQXT6nQkKK7LkVG/giphy.gif)

Each individual `kopi` has a `name` and roastedness (`roast`), and is associtaed with an `origin` (farm where it comes from).

A kopi farm (`origin`) has a `location`, `phone` number and is associated with many kopis.

#### further
Migrate your app to track roastedness in a separate table. Use the [`seed.rb`](https://edgeguides.rubyonrails.org/active_record_migrations.html#migrations-and-seed-data) file to put the 7 kinds of roast into the DB. 

![roasts](https://cdn6.bigcommerce.com/s-s60y10i2/product_images/uploaded_images/roast-comparison-chart.jpg?t=1469215177)

Each kopi will have a roast.

A roast will have many kopis.

Using your models will look something like this:

```
# get all kopis that are Italian roast
Roast.find_by(name: "Italian").kopis
```

#### further 
Change your db model to include an order for a kopi. Change your kopi table to track price per pound. Add an `order` model. A kopi order has a `weight`. It is associated with a kopi.

#### further
For the routes `/orders` and `/orders/:id` include the total price of each order. (weight * price per pound)

#### further
Create a `/report` route that will display sales data.

In order to have data to display you should add more kopis and orders into your database from a seed file.

`/report` should display the total sales for that day. 

#### further
Change `/report` to also display sales by kopi.

#### further
Change `/report` to also display sales by origin.


rails new coffee-tracker -d postgresql
comment out line-20 in Gemfile
rails generate migration coffees
rails generate migration origins
rails db:create
rails db:migrate
touch app/models/coffee.rb
touch app/models/origin.rb
rails console
touch app/controllers/origins_controller.rb
touch app/controllers/coffees_controller.rb
rake db:seed

powwow = Origin.new(name: "Pow Wow", location: "Pow Wow Drive", phone: "999")
powwow.save

puddlemud = Coffee.new(name: "Puddlemud", roast: "Light", origin: powwow)
puddlemud.save

Models
- coffee (name, roast, origin)
- origin (location, phone)
- roast 

Association
- Origin has_many Coffee
- Roast has_many Coffee
- Coffee belongs_to an Origin and a Roast

Views
- parks#new
- parks#show


You are expanding the app to track which customers buy wich coffees.
Create a customer model.
A customer can stock many coffees.
A coffee can be carried by many customers.

customer-coffee many-to-many
#set database
customer - name
coffee_customer - references to coffee and customer

For a given coffee (kopi), /kopi/:id display all the customers who carry that coffeee.
#set controller and view

For a given customer /customer/:id display all the coffees they stock.
#set controller and view

further
Sort the customers by the number of coffees they carry, ascending and descending.

Note: The option of ascending and descending sorting should be noted in the query parameter of the request: /kopi/1?sort=asc

further
Sort the coffees by "popularity"- by the number of shops that carry that coffee.