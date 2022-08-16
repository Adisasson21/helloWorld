# helloWorld
נכנסים ל google cloud נרשמים ונכנסים ל activate cloud shell
נרצה להתקין דוקר על אותה מכונה- נרשום את הפקודות הבאות 
apt update && apt install docker.io -y

# Hello_Docker - How to create an image

Create a simple python script that write anything you want to display
For example I wanted to display Hello Docker
- <b> vim getPrint.py </b> &emsp; print("Hello world") &emsp; #to exit and save do (esc + :wq!) 

Create a Dockerfile that contains all the requirements for the simple script.
- If you used Python packages for your script, you *must* add them to the RUN line.
- <b> vim Dockerfile </b> &emsp; *copy paste Dockerfile*  #(esc + :wq!)
   
---

That's it, we're done with the hard part.
- Let's make our first image. &emsp; #Note: You must be in the Dockerfile's folder otherwise it will say "No such file".
- <b> docker build . -t my-simple-script </b> &emsp; # The dot indicates that you want to run this (or all) Dockerfile && The -t indicates how you want to name the image

- <b> docker run my-simple-script </b> &emsp; # After the word run, we'll mention the name of the image. In case you don't include before the tag, you'll get a random sequence and you need to specify this.

---
כדי לדחוף את האימג שיצרנו למאגר של גוגל קודם ניצא טאג לאותו אימג 
docker tag my-simple-script:v1 gcr.io/grand-verve-359513/my-simple-script
נכנסתי לGoogle Cloud container registry ולוחצים על enable כדי שהתמונה תדחף לגוגל 
docker push gcr.io/grand-verve-359513/my-simple-script

Kubernetes Engine API לעשות enble
 gcloud container clusters create --machine-type n1-standard-2 --num-nodes 2 --zone us-central1-c --cluster-version latest adi
kubectl get node בדיקה אם השרתים עובדים 
