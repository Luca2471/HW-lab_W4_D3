DROP TABLE pizza_orders;

CREATE TABLE pizza_orders (
  id SERIAL primary key,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  topping VARCHAR(255),
  quantity INT
);
