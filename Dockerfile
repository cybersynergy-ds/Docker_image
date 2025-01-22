# Use a base image
FROM ubuntu:20.04

# Install some packages
RUN apt-get update && apt-get install -y python3 python3-pip

# Set a working directory
WORKDIR /app

# Copy the current directory content into the container
COPY . /app

# Install dependencies (if any)
RUN pip3 install --no-cache-dir -r requirements.txt

# Expose a port
EXPOSE 5000

# Define the command to run the application
CMD ["python3", "app.py"]
