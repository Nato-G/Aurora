# Aurora

This is a guide for running Jenkins nato-pipeline with Docker Compose.

Prerequisites:
- Docker and Docker Compose are installed on your machine.
- Clone the repository to your machine. 

Run commands:
1. Download the myjenkins.tar,  aurora-volume.tar  and jenkins_admin_pass.txt files and save them in the root directory of the cloned repository.
   Drive link: https://drive.google.com/drive/folders/1LZZhbWXN-_1I0VDZJ8mJNjf0aoygZy76?usp=sharing

2. Load Jenkins image to Docker:
   $ docker load < myjenkins.tar

3. Load the volume:
   $ docker volume create --name aurora-volume
   $ docker run --rm -v aurora-volume:/data -v $(pwd):/backup busybox tar xvf /backup/aurora-volume.tar

4. Run the container:
   $ docker-compose up 

5. Go to localhost:8080 and log in with the user credentials from jenkins_admin_pass.txt.
   You'll be lanched to Jenkins dashboard with nato-pipeline. 
   
   Thank you.
