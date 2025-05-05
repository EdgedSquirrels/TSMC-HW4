# TSMC-HW4

## Dockerfile

- Build Docker Image
```
COMMIT_HASH=$(git rev-parse --short HEAD)
docker build -t edgedsquirrels/2025cloud:$COMMIT_HASH .
```

- Run Docker Image
```
COMMIT_HASH=$(git rev-parse --short HEAD)
docker run edgedsquirrels/2025cloud:$COMMIT_HASH
```

- Docker Login
```
docker login -u {{username}}
```

- Docker Push
```
COMMIT_HASH=$(git rev-parse --short HEAD)
docker push edgedsquirrels/2025cloud:$COMMIT_HASH
```

## Docker Hub
* Build Logic: `build go application` -> `run the application`
* Whenever a new commit is pushed to Github, a new image will be created.
* Tag Convention: short hash of the latest git commit
