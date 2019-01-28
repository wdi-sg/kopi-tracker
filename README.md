# coffee-tracker


You are working at a coffee roastery. Create a rails app that tracks coffees.

![](https://media.giphy.com/media/l3vQXT6nQkKK7LkVG/giphy.gif)

Each individual `coffee` has a `name` and roastedness (`roast`), and is associtaed with an `origin` (farm where it comes from).

A coffee farm (`origin`) has a `location`, `phone` number and is associated with many coffees.

#### further
Migrate your app to track roastedness in a separate table. Use the [`seed.rb`](https://edgeguides.rubyonrails.org/active_record_migrations.html#migrations-and-seed-data) file to put the 7 kinds of roast into the DB. 

![roasts](https://cdn6.bigcommerce.com/s-s60y10i2/product_images/uploaded_images/roast-comparison-chart.jpg?t=1469215177)

Each coffee will have a roast.

A roast will have many coffees.

Using your models will look something like this:

```
# get all coffees that are dark roast
Roast.find_by(name: "Italian").coffees
```

#### further 
Change your db model to include an order for a coffee. Change your coffee table to track price per pound. Add an `order` model. A coffee order has a `weight`. It is associated with a coffee.

#### further
For the routes `/orders` and `/orders/:id` include the total price of each order. (weight * price per pound)

#### further
Create a `/report` route that will display sales data.

In order to have data to display you should add more coffees and orders into your database from a seed file.

`/report` should display the total sales for that day. 

#### further
Change `/report` to also display sales by coffee.

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


