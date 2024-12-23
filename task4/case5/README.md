# my-vue-app

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

### Build docker image:
```
docker build -t my-vue-app .
```

### Run Docker container
```
docker run -p 8080:80 my-vue-app
```
This command will run the container, mapping port 8080 on your host to port 80 in the container. Your Vue.js app should now be accessible at [http://localhost:8080](http://localhost:8080).
