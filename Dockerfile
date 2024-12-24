# Use an official Node.js image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy only the package manager files
COPY package.json pnpm-lock.yaml ./

# Install pnpm and dependencies
RUN npm install -g pnpm && pnpm install

# Set PNPM_HOME and update PATH
ENV PNPM_HOME=/root/.pnpm
ENV PATH=$PNPM_HOME:$PATH

# Copy the rest of the app's source code
COPY . .

# Build the Vite project
RUN pnpm build

# Install serve globally
RUN pnpm add -g serve

# Expose the port Vite is configured to use
EXPOSE 3000

# Serve the built app
CMD ["serve", "-s", "dist", "-l", "3000"]
