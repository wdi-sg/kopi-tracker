## Part 2 - Many-to-Many

Your roastery has blown up on instagram and you are expanding.

Your app already tracks what you buy and roast, and the kopis you produce.

You are expanding the app to track which customers buy which kopis.

Create a customer model.

A customer can stock many kopis.

A kopi can be carried by many customers.

For a given kopi, `/kopi/:id` display all the customers who carry that kopi.

For a given customer `/customer/:id` display all the kopis they stock.

#### further
Sort the customers by the number of kopis they carry, ascending and descending.

Note: The option of ascending and descending sorting should be noted in the query parameter of the request: `/kopi/1?sort=asc`

#### further
Sort the kopis by "popularity"- by the number of shops that carry that kopi.

