# Use Python 3.9 image
FROM python:3.9-slim

# Set working directory
WORKDIR /usr/src/app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the application on port 5000
EXPOSE 5001

# Define the command to run the application
CMD ["python", "app.py"]
