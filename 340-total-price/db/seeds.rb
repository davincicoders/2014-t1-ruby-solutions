Product.create! name: 'Apples',
  image_filename: 'apple.png',
  price_per_unit: 1.09
Product.create! name: 'Kiwis',
  image_filename: 'kiwi.png',
  price_per_unit: 0.49
Product.create! name: 'Lemons',
  image_filename: 'lemon.png',
  price_per_unit: 0.99
Product.create! name: 'Oranges',
  image_filename: 'orange.png',
  price_per_unit: 0.79

ShipMethod.create! name: "Ground",  price: 10.00
ShipMethod.create! name: "2nd Day", price: 15.00
