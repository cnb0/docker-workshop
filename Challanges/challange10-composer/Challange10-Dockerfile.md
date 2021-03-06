# Docker Workshop
Challange 10 : Build a microservice architecture with Docker Compose!

---
## Task
In this Lab we are going to combine all what we have learned so far into a running 
microservice architecture running python as a backend, php as front-end and Redis as Cache latyer.

we are going to build the following system :

![alt text](https://raw.githubusercontent.com/tshaiman/docker-workshop/master/Challanges/challange10-composer/link_extractor_diagram.png)


## Instructions 

### Part1 - Building the Link Extractor + UI Servers (No Redis)
 1. Go to Challange10/Part1
https://github.com/tshaiman/docker-workshop/tree/master/Challanges/challange10-composer/part1
 and examine the folder /api which is written in python
 
 2. look at linkextractor.py and main.py to get a general idea on how the app is running :
  - the main method uses the linkextractor.py module to scan Html pages and extract 'href' tags
  - the main file uses flask web framework that operates on port 5000 by default 
  - once the server is running any call to it using 'curl localhost:5000/api/url will extract links from that url

  3. build a container image for that python service , test it and run it (no docker-compose yet)

  4. Open the "Front-End" folder called 'www' and examine index.php.
  What is the environment varibale this service is expecting ?

  5. Open docker-compose.yml and understand how it is combine. 
  - pay attention to the services name
  - pay attention to the service environement variables

  6. build the system by running
  ```
  docker-compose up
  ```

  7. check your setting by calling from the terminal :
  
  ```
  curl localhost:5000/api/http://www.cnn.com
  ```
  make sure you are gettings links from the CNN home page .

  8. Open Your web browser at localhost:80 and interact with the same service using the UI !


### Part2 - Building the Link Extractor + UI Servers (With Redis)
1. Go to Challange10/Part2
https://github.com/tshaiman/docker-workshop/tree/master/Challanges/challange10-composer/part2
 and examine the folder /api which is written in python
 
 2. Changes to Previous Step :
 * Another `Dockerfile` is added for the PHP web application to avoid live file mounting
 * A Redis container is added for caching using the official Redis Docker image
 * The API service talks to the Redis service to avoid downloading and parsing pages that were already scraped before

 3. Try it out !
 ```
 docker-compose
 ```

 4. Can you think of a way where you can see the cache hits on the Redis server ?
