# Use the oAicial Python image as the base image 
FROM python:3.13-slim 
# Set the working directory inside the container 
WORKDIR /app 
# Copy the current directory contents into the container 
COPY . /app 
# Install dependencies 
RUN pip install --no-cache-dir -r requirements.txt 
# Expose the Flask port 
EXPOSE 5000 
# Command to run the Flask app 
CMD ["python", "app.py"]
