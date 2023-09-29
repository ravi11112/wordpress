# wordpress

<h1>by using docker-compose.yaml file you can create a wordpress setup using PhpMyAdmin and MySql </h1>

for compose run the cmd

//sudo docker-compose up -d 

and access it from 

http://localhost:8001  #wordpress

http://localhost:8080 #phpmyadmin


![Screenshot from 2023-09-29 17-22-46](https://github.com/ravi11112/wordpress/assets/105406469/6a54119f-7e45-4bdc-91b0-b82a0dd2eafb)



![Screenshot from 2023-09-29 17-28-41](https://github.com/ravi11112/wordpress/assets/105406469/a637a861-2020-4c40-845d-55950c1b5e17)





![Screenshot from 2023-09-29 17-32-30](https://github.com/ravi11112/wordpress/assets/105406469/9df5e160-655b-4e3b-891b-6877aa38ffd2)



![Screenshot from 2023-09-29 17-32-52](https://github.com/ravi11112/wordpress/assets/105406469/0cdc370f-fad0-4b30-8930-098cc10852c3)



![Screenshot from 2023-09-29 17-34-51](https://github.com/ravi11112/wordpress/assets/105406469/97e53558-8ca9-4370-8b1f-4c40100229df)






<h1>by using this Dockerfile create its image </h1>

//sudo docker build -t wordpress .


then create a container and expose port 80 

//docker run -d --name my-wordpress-container -p 8080:80 \
  -e WORDPRESS_DB_PASSWORD=root \
  my-wordpress-image


after creating this now push image on dockerhub 
for this login in dockerhub

//docker login
  add tag to the image  
//sudo docker tag img_id techraviraj/wordpress:img3

//sudo docker push techraviraj/wordpress:img3






<h1>now create the instance using terraform script</h1>

//terraform init

//terraform plan

//terraform apply




![Screenshot from 2023-09-28 23-12-46](https://github.com/ravi11112/wordpress/assets/105406469/8673bb7e-d6d2-462f-9813-ff3f1cadbbf3)





![Screenshot from 2023-09-28 23-14-24](https://github.com/ravi11112/wordpress/assets/105406469/95ade870-41a5-4daf-b131-57373120aaf5)






![Screenshot from 2023-09-28 23-18-48](https://github.com/ravi11112/wordpress/assets/105406469/6b945de8-d862-4268-bbc7-8ab818f7276e)





![Screenshot from 2023-09-29 11-50-02](https://github.com/ravi11112/wordpress/assets/105406469/7b3404d4-e077-4354-9a78-976c515192de)





![Screenshot from 2023-09-29 11-50-44](https://github.com/ravi11112/wordpress/assets/105406469/8f343dbd-57be-4c67-9a19-bce2f143e4d1)






![Screenshot from 2023-09-29 11-54-28](https://github.com/ravi11112/wordpress/assets/105406469/737af3af-3e99-490c-9cbb-8afd22638c38)





![Screenshot from 2023-09-29 11-54-50](https://github.com/ravi11112/wordpress/assets/105406469/87ff9f84-1cb8-4cc2-869a-fdc987e45c8f)

