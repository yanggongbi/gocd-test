## One-time setup to build war builder
```
# cd helloworld-war/war_builder/; ./build_war_builder.sh
```

## Building war package and hellow-world webapp docker image
```
# cd helloworld-war/; ./build_war_and_image.sh
```

## Starting container to verify the demo webapp
```
# cd helloworld-war/; ./run.sh
```

```
# curl localhost:8080/
This is static resource!!!
# curl localhost:8080/helloworld
Hello, world
```

## Change code and verify again
```
# echo 'This is static resource!!!' >> helloworld-war/webapps/web/index.html
# cat helloworld-war/webapps/web/index.html
This is static resource!!!
This is static resource!!!
```

```
# helloworld-war/build_war_and_image.sh
# helloworld-war/run.sh
```

```
# curl localhost:8080/
This is static resource!!!
This is static resource!!!
```
