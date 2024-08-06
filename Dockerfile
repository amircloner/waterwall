# Use an official Alpine Linux runtime as a parent image
FROM alpine:latest

# Install necessary packages
RUN apk add --no-cache git bash

# Set the working directory in the container
WORKDIR /app

# Copy the local files to the container
COPY . .

# Add execute permissions to the waterwall binary
RUN chmod +x ./waterwall

# Run the waterwall binary
CMD ["./waterwall"]
