## Part 2 - Many-to-Many

Your roastery has blown up on instagram and you are expanding.

Your app already tracks what you buy and roast, and the coffees you produce.

You are expanding the app to track which customers buy wich coffees.

Create a customer model.

A customer can stock many coffees.

A coffee can be carried by many customers.

For a given coffee (kopi), `/kopi/:id` display all the customers who carry that coffeee.

For a given customer `/customer/:id` display all the coffees they stock.

#### further
Sort the customers by the number of coffees they carry, ascending and descending.

Note: The option of ascending and descending sorting should be noted in the query parameter of the request: `/kopi/1?sort=asc`

#### further
Sort the coffees by "popularity"- by the number of shops that carry that coffee.

