# Use an official Ubunru Linux runtime as a parent image
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update -y

# Set the working directory in the container
WORKDIR /app

# Copy the local files to the container
COPY . .

# Add execute permissions to the waterwall binary
RUN chmod +x ./waterwall

# Run the waterwall binary
CMD ["./waterwall"]
