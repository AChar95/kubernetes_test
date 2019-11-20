# NGINX Load Balancer

In the current set up the nginx container is designed to act as reverse-proxy where it will allow traffic to travel through a single IP and port.
In this current setup it is implemented by using the endpoint of the URL: e.g. <ip>/jenkins will redirect the user to the jenkins container where they will be greeted with the jenkins screen

![Image of Jenkins landing](url)


When deploying the current set up, navigating to the IP address of the nginx container will display the basic pug-based webpage. It is possible to have nginx redirect to many different pages.
It is very important to pay attention to the destination of that particular endpoint, and if for example requests need to be made to that endpoint such as an API the appropriate CORS rules are applied.
