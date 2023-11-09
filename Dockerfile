# Use Python 3.6 or later as a base image
FROM python:latest

# Set a working directory
WORKDIR /app

# Copy contents into image
COPY . .
 
# Install pip dependencies from requirements
RUN apt update -y
RUN pip install -r requirements.txt

# Set YOUR_NAME environment variable
ENV YOUR_NAME=Chris

# Expose the correct port
EXPOSE 80

# Create an entrypoint
ENTRYPOINT ["python", "app.py"]
