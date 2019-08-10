

TODO:
1. Add a angular basic client (to execute the app and show CORS)

(*) Open 3 terminals and show each microservice
)**) Work with curl

Points to think on in the video - show:
1. Port conflicts.
2. CORS
3. Starting a path in nginx without "/" (means no absolute path)
4. Giving different url in nginx config file (under proxy_pass) then in the docker-compose yaml.
5. Show why we need volumes - write in serviceB a mistake with: "Hello from endpoint1" and show how volumes can fix this
6. Go inside the container with another shell (docker exec -it /bin/sh and not /bin/bash)
7. Run also as docker-compose as a daemon
8. Explain that we map the reverse proxy to all the 3 services via port 4000 and not on 40001/4002/4003
   Because the 4001/4002/4003 ports are related to the host machine and relevant to the inner network that
   docker-compose creates. inside that local network docker-compose will link all the containers together
   according to there names (i think), and each container also listen inside his private network (i think) to port 4000
   and we need to specify this..(TODO: Write a better explanation)..
9. Bug in one of the services (curl doesn't return 200) - go inside the container and see in log - need to define where to print the logs - use winston or log4js)
 Plus check if nodejs can print to syslog

 10. show why we had to define volumes also to the nodeJS part (do a bug in one of index.js and then show that it is still there after conteiners are down)