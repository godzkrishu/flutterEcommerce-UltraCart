# Flutter E-Commerce App

A comprehensive **E-Commerce Application** built with Flutter that includes user, seller, and admin functionalities. This app provides all the necessary features of a fully functional e-commerce platform, from user authentication to managing products, orders, and payments.

## Features

### User
- Sign up, sign in, and authentication
- Browse products by category
- View product details
- Add to cart and place orders
- View order history
- Manage user profile

### Admin / Seller
- Add new products (name, description, price, images, quantity, Quantity)
- Manage inventory and product details
- View sales and order details
- Monitor and manage platform activity

### General Features
- Secure login and authentication (JWT)
- Real-time database (MongoDB)
- Dynamic product listings
- Persistent user info data (Local data persistence)

## Technologies Used
- **Frontend:** Flutter
- **Backend:** Node.js, Express.js
- **Database:** MongoDB
- **Authentication:** Mongodb, JWT Authentication
- **State Management:** Provider
- **Deployment:** onrender and Mongodb
## Installation & Setup
### Prerequisites
- Flutter SDK
- Node.js & npm
- MongoDB instance
- Firebase account (for authentication and hosting)

### Steps to Run the Project
1. **Clone the repository:**
   ```bash
   git clone https://github.com/godzkrishu/flutterEcommerce-UltraCart
   cd flutter-ecommerce-app
   ```
2. **Install Flutter dependencies:**
   ```bash
   flutter pub get
   ```
3. **Set up the backend:**
   - Navigate to the `/backend` directory and run the following commands:
     ```bash
     npm install
     node index.js or nodemon index.js
     ```
4. **Update environment variables:**
   - In the Flutter project, update your MongoDB configuration.

5. **Run the Flutter app:**
   ```bash
   flutter run
   ```

## Contributing
Feel free to fork this repository and contribute to the development by creating a pull request. All suggestions are welcome!

---
