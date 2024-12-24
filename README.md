# docker

oyee avinash ye file docker ke liye hai tum yaha pe na docker ka file mein upload karungi waise hi kar tu 

1. Create a Project Directory 
Create a directory for your Flask app and open it in VSCode. 
bash 
Copy code 
mkdir flask_docker_app 
cd flask_docker_app 
code . 
2. Create Necessary Files 
In VSCode, create the following files in your project directory: 
o app.py: The main Flask application. 
o requirements.txt: To list Python dependencies. 
o Dockerfile: To define the Docker image. 
3. Write the Flask Application 
In app.py, add a basic Flask app: 
python 
Copy code 
from flask import Flask 
app = Flask(__name__) 
@app.route('/') 
def home(): 
return "Hello, Dockerized Flask!" 
if __name__ == '__main__': 
app.run(host='0.0.0.0', port=5000) 
4. Add Dependencies 
In requirements.txt, list the dependencies: 
txt 
Copy code 
f
 lask==2.3.2 
5. Create the Dockerfile 
In the Dockerfile, define the Docker image: 
Dockerfile 
Copy code 
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
3. Build the Docker Image 
1. Open the Integrated Terminal 
Open VSCode’s terminal: 
Ctrl + ~ or View > Terminal. 
2. Build the Docker Image 
Run the following command in the terminal: 
bash 
Copy code 
docker build -t flask-docker-app . 
3. Verify the Image 
Check if the image is built successfully: 
bash 
Copy code 
docker images 
4. Run the Docker Container 
1. Start the Container 
Run a container from the built image: 
bash 
Copy code 
docker run -p 5000:5000 flask-docker-app 
2. Test the Application 
Open a web browser and navigate to http://localhost:5000. 
You should see: "Hello, Dockerized Flask!"
