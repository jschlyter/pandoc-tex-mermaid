IMAGE_NAME=	jschlyter/pandoc-tex-mermaid
PLATFORMS=	linux/amd64,linux/arm64


build:
	docker build -t ${IMAGE_NAME} .

buildx:
	docker buildx build --platform ${PLATFORMS} --load --tag ${IMAGE_NAME} .

push:
	docker push ${IMAGE_NAME}
