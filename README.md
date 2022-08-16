# helloWorld
נכנסים ל google cloud נרשמים ונכנסים ל activate cloud shell
נרצה להתקין דוקר על אותה מכונה- נרשום את הפקודה הבאה

apt update && apt install docker.io -y

# Hello_Docker - How to create an image

Create a simple python script that write anything you want to display
For example I wanted to display Hello Docker
- <b> vim getPrint.py </b> &emsp; *copy paste print.py* &emsp; #to exit and save do (esc + :wq!) 

Create a Dockerfile that contains all the requirements for the simple script.
- If you used Python packages for your script, you *must* add them to the RUN line.
- <b> vim Dockerfile </b> &emsp; *copy paste Dockerfile* &emsp; #(esc + :wq!)
   
---

That's it, we're done with the hard part.
- Let's make our first image. &emsp; #Note: You must be in the Dockerfile's folder otherwise it will say "No such file".
- <b> docker build . -t hello </b> &emsp; # The dot indicates that you want to run this (or all) Dockerfile && The -t indicates how you want to name the image

- <b> docker run hello </b> &emsp; # After the word run, we'll mention the name of the image. In case you don't include before the tag, you'll get a random sequence and you need to specify this.

--- 
כדי לדחוף את האימג שיצרנו למאגר של גוגל קודם נייצר tag לאותו אימג &emsp; 

<b>docker tag hello gcr.io/grand-verve-359513/hello </b>

נכנסים לGoogle Cloud container registry ולוחצים על enable כדי שהתמונה תדחף לגוגל 

<b>docker push gcr.io/grand-verve-359513/hello </b>

---

Kubernetes Engine API לעשות enble

<b>gcloud container clusters create --machine-type n1-standard-2 --num-nodes 2 --zone us-central1-c --cluster-version latest <השם של הקלסטר=adi></b>

כדי שנוכל להשתמש בפקודה kubectl נוריד את האופציה כך --> 
<b>sudo apt-get install kubectl  </b>

 ואז נבדוק אם השרתים עובדים כהלכה --> 
<b>kubectl get node</b>  

---

כדי ליצור את הפריסה של האימג' שלנו נרשום את הפקודה הבאה -->

<b>kubectl create deployment supersmart --image=gcr.io/grand-verve-359513/hello</b>

יצירה של פריסה עם האימג' שנבחר

כדי שנוכל לצפות בתוכל של אותו אימג' דרך האינטרנט נבצע את הפקודה הבאה -->

<b>kubectl expose deployment supersmart --type=LoadBalancer --port=80 --target-port=80 </b>

החשיפה של האימג' מתבצעת לפי אותו שם פריסה שיצרנו מקודם 

 נרשום --> <b>kubectl get svc</b>
 
באותו השורה של השם של הdeployment -נראה בטור של הexternal-ip  
ניקח את אותה כתובת IP ונעתיק אותה לדפדפן חדש
