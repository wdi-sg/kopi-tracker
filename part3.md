## Part 3 Many-to-Many

Your roastery has blown up on instagram and you are expanding.

Your app already tracks what you buy and roast, and the kopis you produce.

You are expanding the app to track which customers buy which kopis.

Create a customer model.

A customer can stock many kopis.

A kopi can be carried by many customers.

For a given kopi, `/kopi/:id` display all the customers who carry that kopi.

For a given customer `/customer/:id` display all the kopis they stock.

Note: (the customer model is not login)

#### further
Add the ability for customers to log in.

Make changes to add devise to the customers model. (Don't integrate the customer and the user model- we'll leave the user model just for the general public)

#### further
Sort the customers by the number of kopis they carry, ascending and descending.

Note: The option of ascending and descending sorting should be noted in the query parameter of the request: `/kopi/1?sort=asc`

#### further
Sort the kopis by "popularity"- by the number of shops that carry that kopi.








