# Shopify - a simple eCommerce app

Welcome to my E-commerce App! This project is a dummy e-commerce application built using React, Tailwind CSS, Vite, TypeScript, and Redux Toolkit. It aims to showcase various features commonly found in e-commerce platforms, including a homepage, product listing page, cart functionality, and user-authenticated pages like account and wishlist.

---

## Features

- **Homepage:** Introduce users to your e-commerce platform with attractive banners, featured products, and navigation options.
- **Product Page:** Display a catalog of products with detailed information, including images, descriptions, and pricing.
- **Cart:** Allow users to add products to their cart, view cart contents, and proceed to checkout.
- **User Authentication:** Enable users to create accounts, log in, and access personalized features like wishlists and account settings.
- **Wishlist:** Allow users to save products they're interested in for future reference.

---

## Technologies Used

| Tech | Purpose |
| --- | --- |
| **React** | Component-based UI library |
| **Tailwind CSS** | Utility-first styling |
| **Vite** | Lightning-fast dev server & build tool |
| **TypeScript** | Static typing for safer code |
| **Redux Toolkit** | Simplified global state management |
| **Cypress** | End-to-end testing |

---

## Getting Started

```bash
# clone repository
git clone https://github.com/your-user/shopify-simple.git
cd shopify-simple

# install dependencies
yarn install     # or npm install

# start dev server
yarn dev         # or npm run dev
# → http://localhost:5173
```

---

## Running with Docker

> No Node installation required—everything is baked into the image.

```bash
# one-liner
docker compose up --build # → http://localhost:3000
```

*The `Dockerfile` multi-stage build compiles the production bundle with Yarn and serves it via **Nginx**.  
`docker-compose.yml` maps container port 80 to host port 3000 for convenience.*

---

## CI / CD

A GitHub Actions workflow (`.github/workflows/ci.yml`) automatically:

1. Installs dependencies (`yarn install`)
2. Builds the production assets (`yarn build`)
3. Builds the Docker image
4. **Smoke-tests** the container – starts it, waits 5 s, and `curl`s `/` expecting **HTTP 200**

This lightweight test guarantees the image boots and serves the SPA without adding any extra test code or dependencies to the repo.

---

## Contributing

1. Fork the repository.
2. Create a feature branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m "feat: awesome feature"`).
4. Push to GitHub (`git push origin feature/your-feature`).
5. Open a Pull Request.

---

## License

MIT — see [LICENSE](LICENSE) for full text.

---

## Acknowledgements

- Product data provided by [DummyJSON](https://dummyjson.com/)
- Huge thanks to the teams behind Tailwind CSS, Redux Toolkit and all other OSS used here.

---

## Contact

Questions or feedback? <alim1496@gmail.com>

---

*Happy coding & happy shipping! 🚀*
