# Use an official Ubuntu image as a base
FROM ubuntu:latest

# Set the maintainer label
LABEL maintainer="me22b2043@iiitdm.ac.in"

# Update package list and install curl
RUN apt-get update && apt-get install -y curl

# Set a working directory
WORKDIR /app

# Expose a port (optional)
EXPOSE 8080

# Default command
CMD ["bash"]
