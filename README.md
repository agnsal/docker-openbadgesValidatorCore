# docker-openbadgesValidatorCore
A Docker container with Ubuntu 20, Python3.9, Flask, openbadges-validator-core and its dependencies.

## Instructions

1. To get the Docker container:
```sh
docker pull agnesesalutari/docker-openbadgesvalidatorcore
```
2. To run the container (you have tu use this command for the very first time you run the container only):
```sh
docker run -it --name="OVC" agnesesalutari/docker-openbadgesvalidatorcore
```
 3. To stop the container:
```sh
docker stop "OVC"
```
 4. Tu run the container again:
```sh
docker start "OVC"
```
5. To work inside the container:
```sh
docker exec -it "OVC" bash
```

## Contacts

Agnese Salutari – agneses92@hotmail.it

Distributed under the Apache License 2.0. See ``LICENSE`` for more information.

[https://github.com/agnsal](https://github.com/agnsal)


## Contributing

1. Fork it (<https://github.com/yourname/yourproject/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request
