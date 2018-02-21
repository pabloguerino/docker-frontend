# Dockerfile for Zen Theme.

### Usage (Without Makefile)

```
docker run --rm -t -u 1000:1000 -v $(pwd):/work abc/xyz 
```

### Steps to build a new image

_Note: this is just a quick guide to get started using this new image_

- Login to gitlab so we can use gitlab registry `make login` or `docker login ...`
- Use the same `package.json` as the one located inside the project repo 
- You can set a project name in the `Makefile`
- Build the container with `make build` 
- Push it to gitlab with `make push`
- Update the `.env` file from your project to use this new image

### Why this image instead of the other ones?

- Based on node.js 8.x
- Easier to mantain: doesn't require packages to be hardcoded in the Dockerfile, we only mantain one package.json
- Alternative way for caching (npm packages), we don't use global npm packages or links anymore
- Backwards compatible