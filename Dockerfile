# Dockerfile for book_catalog microservice
# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV DATABASE_URL postgresql://postgresql_sit722_xcy0_user:0Iho9qW1Y21NZki0KejfQ7vm7YqcY9kH@dpg-cr9r548gph6c73d46v70-a.oregon-postgres.render.com/postgresql_sit722_xcy0

# Run app.py when the container launches
CMD ["python", "main.py"]
