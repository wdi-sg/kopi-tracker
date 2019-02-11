# kopi-tracker


You are working at a kopi roastery. Create a rails app that tracks kopis.

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
# get all kopis that are dark roast
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
