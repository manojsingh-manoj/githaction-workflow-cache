# Use a minimal base image for the final container
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy application source code
COPY . .

# Copy pre-installed dependencies from host
COPY --chown=node:node node_modules ./node_modules

# Use non-root user for security
USER node

# Expose port
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
