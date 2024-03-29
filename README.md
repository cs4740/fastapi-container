# FastAPI Demo

## Setup

This project includes both a `requirements.txt` (for `pip`) and `Pipfile` (for `pipenv`).
It is preferable to use `pipenv`. To set up and load dependencies:

```bash
# Install pipenv if needed
python3 -m pip install pipenv

# Create a pipenv shell in this directory after cloning
pipenv shell

# Install dependencies
pipenv install -r requirements.txt
```

## Development

As typical with FastAPI development, run the local server as you code:
```bash
# cd into the app/ directory
cd app

# run the local uvicorn server (install locally first)

```

Your dev site is now running locally at [http://localhost:8000/](http://localhost:8000/)
and will refresh automatically with changes.

## Sample Endpoints and Methods

This template contains a variety of methods and endpoints:

### `http://localhost:8000/add/7/3`

Adds two integers taken as URL path parameters
```json
{
  "sum": 10
}
```

### `http://localhost:8000/items/1234567890?q=foo&s=bar`

Takes an integer path parameter `1234567890` as well as two query string parameters `foo` and `bar`.

```json
{
  "item_id": 1234567890,
  "q": "foo",
  "s": "bar"
}
```

For more on catching POST payloads in JSON, or form parameters, consult the FastAPI documentation.

## Build the Container

Build locally with the `docker build` command:
```bash
docker build -t some_org/some_image:some_tag .
```

## Run the Container Locally

Run the image locally and map the container port (80) to some host port (8080):
```bash
docker run -d -p 8080:80 --rm some_org/some_image:some_tag
```

## Set up a Build Pipeline

Look in `.build.yml` for a sample template that completes the following steps:

1. Builds the container image.
2. Pushes the new image to the container registry of your choice (i.e. Docker Hub, GHCR, etc.)
3. (Optional) Publish a message for deployment in K8S, etc.

To enable this pipeline, place it in `.github/workflows/` and git push. Some repository secrets must be set before builds will work.
