# React + TypeScript + Vite + Docker

This template provides a minimal setup for a React application using TypeScript, Vite, and Docker. It is designed to be lightweight and easy to extend, making it a great starting point for modern web development projects.

---

## Features

- React with TypeScript
- Vite for fast builds and development
- Docker for containerized development and deployment
- Ready to use as a template for future projects

---

## Prerequisites

Before you start, ensure you have the following installed on your machine:

- [Node.js](https://nodejs.org/) (v18+ recommended)
- [pnpm](https://pnpm.io/) (for dependency management)
- [Docker](https://www.docker.com/) and Docker Compose

---

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/tamakunay/react-vite-ts-docker.git
cd react-vite-ts-docker
```

### 2. Install Dependencies

```bash
pnpm install
```

### 3. Run the Development Server

Start the development server locally (without Docker):

```bash
pnpm dev
```

This will start the Vite development server. Open [http://localhost:5173](http://localhost:5173) in your browser.

---

## Using Docker

You can run the app using Docker for a containerized environment.

### Build and Run with Docker

1. Build the Docker image:

   ```bash
   docker compose build
   ```

2. Start the container:

   ```bash
   docker compose up
   ```

3. Open the app in your browser at [http://localhost:3000](http://localhost:3000).

### File Structure in the Container

The `dist` directory is generated during the build process and served by the `serve` package inside the container.

---

## Project Structure

```
├── Dockerfile          # Docker configuration for building the image
├── docker-compose.yml  # Docker Compose setup for running the app
├── src/                # Source code for the React app
│   ├── App.tsx         # Main App component
│   ├── main.tsx        # Entry point for the application
├── public/             # Public static files
├── package.json        # Project dependencies and scripts
├── pnpm-lock.yaml      # Lockfile for pnpm
├── tsconfig.json       # TypeScript configuration
├── vite.config.ts      # Vite configuration
```

---

## Scripts

### Development

Start the development server:

```bash
pnpm dev
```

### Build

Create a production build:

```bash
pnpm build
```

### Serve

Serve the production build locally:

```bash
pnpm preview
```

---

## Extending the Template

This template is designed to be minimal yet scalable. You can:

- Add ESLint for code quality
- Add unit testing with libraries like Jest or Vitest
- Use Docker for multi-stage builds in production
- Extend Vite's configuration as needed

---

## License

This template is open-source and licensed under the [MIT License](LICENSE).

