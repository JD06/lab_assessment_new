# Use a slim version of Python to keep the image size small
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY app.py .

# Expose the port Flask runs on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]