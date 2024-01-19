# Use the official Python image as the base image
FROM python:3.8

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Python script into the container
COPY ml_plugin.py .

# Specify the command to run on container start
CMD ["python", "./ml_plugin.py"]