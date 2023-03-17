import 'package:miniapp/state_management/domain/food.dart';
import 'package:miniapp/state_management/domain/food_category.dart';

class DefaultData {
  static const bestrestaurant = [
    {
      "id": 1,
      "code": "001",
      "name": "Pizza Hut",
      "image": "assets/images/image1.jpg",
      "address": "202 Nguyen Van Cu, An Hoa Ward, Ninh Kieu District, Can Tho"
    },
    {
      "id": 2,
      "code": "002",
      "name": "The Pizza Company",
      "image": "assets/images/image2.jpg",
      "address":
          "2nd Floor, Lot L2 - 04 Sense City, 1 Hoa Binh, Tan An Ward, Ninh Kieu District, Can Tho"
    },
    {
      "id": 3,
      "code": "003",
      "name": "Pizza Y",
      "image": "assets/images/image3.jpg",
      "address": "202 Nguyen Van Cu, An Hoa Ward, Ninh Kieu District, Can Tho"
    }
  ];
  static const newrestaurant = [
    {
      "id": 4,
      "code": "004",
      "name": "Pizza City",
      "image": "assets/images/image4.jpg",
      "address": "21 Nguyen Van Cu, An Hoa Ward, Ninh Kieu District, Can Tho"
    },
    {
      "id": 5,
      "code": "005",
      "name": "The Pizza",
      "image": "assets/images/image3.jpg",
      "address": "32, 1 Hoa Binh, Tan An Ward, Ninh Kieu District, Can Tho"
    },
    {
      "id": 6,
      "code": "006",
      "name": "Pizza Kai",
      "image": "assets/images/image1.jpg",
      "address": "20 Nguyen Van Linh, An Hoa Ward, Ninh Kieu District, Can Tho"
    }
  ];
  static const allrestaurant = [
    {
      "id": 4,
      "code": "004",
      "name": "Pizza City",
      "image": "assets/images/image4.jpg",
      "address": "21 Nguyen Van Cu, An Hoa Ward, Ninh Kieu District, Can Tho"
    },
    {
      "id": 5,
      "code": "005",
      "name": "The Pizza",
      "image": "assets/images/image3.jpg",
      "address": "32, 1 Hoa Binh, Tan An Ward, Ninh Kieu District, Can Tho"
    },
    {
      "id": 6,
      "code": "006",
      "name": "Pizza Kai",
      "image": "assets/images/image1.jpg",
      "address": "20 Nguyen Van Linh, An Hoa Ward, Ninh Kieu District, Can Tho"
    },
    {
      "id": 1,
      "code": "001",
      "name": "Pizza Hut",
      "image": "assets/images/image1.jpg",
      "address": "202 Nguyen Van Cu, An Hoa Ward, Ninh Kieu District, Can Tho"
    },
    {
      "id": 2,
      "code": "002",
      "name": "The Pizza Company",
      "image": "assets/images/image2.jpg",
      "address":
          "2nd Floor, Lot L2 - 04 Sense City, 1 Hoa Binh, Tan An Ward, Ninh Kieu District, Can Tho"
    },
    {
      "id": 3,
      "code": "003",
      "name": "Pizza Y",
      "image": "assets/images/image3.jpg",
      "address": "202 Nguyen Van Cu, An Hoa Ward, Ninh Kieu District, Can Tho"
    },
    {
      "id": 7,
      "code": "001",
      "name": "Pizza ZZ",
      "image": "assets/images/image1.jpg",
      "address": "202 Nguyen Van Cu, An Hoa Ward, Ninh Kieu District, Can Tho"
    },
    {
      "id": 8,
      "code": "002",
      "name": "Pizza Pizza",
      "image": "assets/images/image2.jpg",
      "address":
          "2nd Floor, Lot L2 - 04 Sense City, 1 Hoa Binh, Tan An Ward, Ninh Kieu District, Can Tho"
    },
    {
      "id": 9,
      "code": "003",
      "name": "Pizza C",
      "image": "assets/images/image3.jpg",
      "address": "202 Nguyen Van Cu, An Hoa Ward, Ninh Kieu District, Can Tho"
    }
  ];

  static List<FoodCategory> foodlist = [
    FoodCategory(
      name: "Pizza",
      foods: [
        Food(
          id: 1,
          name: "Seafood Pizza with Pesto . Sauce",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "139.000",
          image: "assets/images/pizza1.jpg",
        ),
        Food(
          id: 2,
          name: "Cheese Bacon Pizza",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "139.000",
          image: "assets/images/pizza1.jpg",
        ),
        Food(
          id: 3,
          name: "Grilled Chicken Pizza with Mushrooms",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "139.000",
          image: "assets/images/pizza1.jpg",
        ),
        Food(
          id: 4,
          name: "Peach Sauce Five-Fruit Salad",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "165,000",
          image: "assets/images/pizza1.jpg",
        ),
        Food(
          id: 5,
          name: "Pizza Four Tastes Du Xuan",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "345,000",
          image: "assets/images/pizza1.jpg",
        ),
        Food(
          id: 6,
          name: "NEW YORK PIZZA HALF-HALF",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "235,000",
          image: "assets/images/pizza1.jpg",
        ),
        Food(
          id: 7,
          name: "Premium Seafood Pizza",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "165,000",
          image: "assets/images/pizza1.jpg",
        ),
        Food(
          id: 8,
          name: "Pizza 5 Special Meat",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "155.000",
          image: "assets/images/pizza1.jpg",
        ),
        Food(
          id: 9,
          name: "Pizza 5 Special Meats and Vegetables / Super Deluxe",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "155.000",
          image: "assets/images/pizza1.jpg",
        ),
        Food(
          id: 10,
          name: "Pizza Aloha / Aloha",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "155.000",
          image: "assets/images/pizza1.jpg",
        )
      ],
    ),
    FoodCategory(
      name: "Spaghety",
      foods: [
        Food(
          id: 1,
          name: "Spaghetti and Cream Mushroom Sauce",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 2,
          name: "Minced Beef Spaghetti ",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 3,
          name: "Spicy Spaghetti",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 4,
          name: "Stir fried pasta with spicy sausage",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 5,
          name: "Spaghetti Shrimp Sauce Cream Tomato",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 6,
          name: "Vegetarian Spaghetti Fresh Cream Sauce",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 7,
          name: "Seafood spaghetti tomato sauce",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 8,
          name: "Seafood spaghetti with black pepper sauce",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 9,
          name: "minced beef spaghetti with tomato sauce",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 10,
          name: "Spaghetti with vegetable in marinara sauce",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        )
      ],
    ),
    FoodCategory(
      name: "Salad",
      foods: [
        Food(
          id: 1,
          name: "Caesar's salad",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "105.000",
          image: "assets/images/salad.jpg",
        ),
        Food(
          id: 2,
          name: "Crispy salmon skin salad with yuzu sauce",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "105.000",
          image: "assets/images/salad.jpg",
        ),
        Food(
          id: 3,
          name: "Signature salad",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "105.000",
          image: "assets/images/salad.jpg",
        ),
        Food(
          id: 4,
          name: "Boneless Crispy Chicken Salad",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "105.000",
          image: "assets/images/salad.jpg",
        ),
        Food(
          id: 5,
          name: "Garden salad dressing with Balsamic vinegar dressing",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "105.000",
          image: "assets/images/salad.jpg",
        ),
      ],
    ),
    FoodCategory(
      name: "Water",
      foods: [
        Food(
          id: 1,
          name: "Spaghetti and Cream Mushroom Sauce",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 2,
          name: "Minced Beef Spaghetti ",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 3,
          name: "Spicy Spaghetti",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 4,
          name: "Stir fried pasta with spicy sausage",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 5,
          name: "Spaghetti Shrimp Sauce Cream Tomato",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 6,
          name: "Vegetarian Spaghetti Fresh Cream Sauce",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 7,
          name: "Seafood spaghetti tomato sauce",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 8,
          name: "Seafood spaghetti with black pepper sauce",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 9,
          name: "minced beef spaghetti with tomato sauce",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        ),
        Food(
          id: 10,
          name: "Spaghetti with vegetable in marinara sauce",
          description:
              "Shrimp, squid and mushrooms in signature Pesto sauce, topped with Mozzarella cheese",
          price: "125.000",
          image: "assets/images/spaghety.jpg",
        )
      ],
    ),
  ];
}
