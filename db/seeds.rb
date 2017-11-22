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
  address: 'Cullera',
  city: "Cullera",
  postcode: "46400"
)

Flat.create(
  name: "Morgon",
  lat: 46.145215,
  lng: 4.678339,
  description: ('bla ' * 10),
  picture: 'https://res.cloudinary.com/wagon/image/upload/c_fill,h_200/v1500988849/nqoqw5sinlj1hqvxrfyi.jpg',
  address: 'Morgon',
  city: "Morgon",
  postcode: "69910"
)
