User.create(
  email: "lea@gmail.com",
  password: "123456",
  first_name: "Lea",
  last_name: "Woiwoi"
)

Flat.create(
  name: "Cullera",
  lat: 39.1631959,
  lng: -0.2537897,
  description: ('bla ' * 10),
  picture: 'https://res.cloudinary.com/wagon/image/upload/c_fill,h_200/v1500988849/nqoqw5sinlj1hqvxrfyi.jpg',
  address: 'Calle de los Conejos, 1',
  city: "Cullera",
  postcode: "46400"
)

Flat.create(
  name: "Le Wagon",
  lat: 50.632668,
  lng: 3.017586,
  description: ('bla ' * 10),
  picture: 'https://res.cloudinary.com/wagon/image/upload/c_fill,h_200/v1500988849/nqoqw5sinlj1hqvxrfyi.jpg',
  address: '2 avenue des saules',
  city: "Lille",
  postcode: "59000"
)
