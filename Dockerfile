# Dockerfile for book-catalog microservice
# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./app /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable
ENV DATABASE_URL postgresql://postgresql_sit722_xcy0_user:0Iho9qW1Y21NZki0KejfQ7vm7YqcY9kH@dpg-cr9r548gph6c73d46v70-a.oregon-postgres.render.com/postgresql_sit722_xcy0

# Run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
