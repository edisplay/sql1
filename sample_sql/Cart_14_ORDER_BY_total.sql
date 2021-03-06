/*  Chapter 8: The ORDER BY Clause  */

/*  ORDER BY total DESC  */

SELECT 
  customers.name    AS customer
, carts.id          AS cart
, items.name        AS item
, cartitems.qty
, items.price
, cartitems.qty
      * items.price AS total
FROM
  customers
  INNER JOIN carts
    ON carts.customer_id = customers.id
  INNER JOIN cartitems
    ON cartitems.cart_id = carts.id
  INNER JOIN items
    ON items.id = cartitems.item_id
ORDER BY 
  total DESC
;
/* Results should look like this --
   customer  cart  item             qty  price   total 
   B. Smith  2921  whatsis           2   93.70  187.40
   C. Brown  3001  whatsis           2   93.70  187.40
   G. Scott  3321  whatchamacallit   3   59.95  179.85
   B. Smith  2921  dingus            3   29.37   88.11
   H. Clark  3081  dingus            3   29.37   88.11
   C. Brown  3937  thingum           3   22.22   66.66
   C. Brown  3001  thingamabob       3   22.22   66.66
   D. White  3197  whatchamacallit   1   59.95   59.95
   E. Baker  2461  whatnot           3   15.00   45.00
   H. Clark  3081  thingum           2   22.22   44.44
   A. Jones  2131  thingum           2   22.22   44.44
   A. Jones  2131  gimmick           3    9.37   28.11
   E. Baker  2461  doohickey         2   12.00   24.00
   C. Brown  2937  thingum           1   22.22   22.22
   B. Smith  3002  doohickey         1   12.00   12.00
*/
