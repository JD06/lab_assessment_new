# Use a slim version of Python to keep the image size small
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Create a non-root user and group
RUN groupadd -g 1000 pythonapp && \
    useradd -u 1000 -g pythonapp -m -s /bin/bash pythonapp

# Copy the requirements file and install dependencies
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code and change ownership to our new user
COPY --chown=pythonapp:pythonapp ./app .

# Switch to the non-root user
USER 1000

# Expose the port Flask runs on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]