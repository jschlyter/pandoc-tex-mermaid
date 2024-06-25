IMAGE=		jschlyter/pandoc-tex-mermaid
PLATFORMS=	linux/amd64,linux/arm64


build:
	docker build -t ${IMAGE} .

buildx:
	docker buildx build --platform ${PLATFORMS} --load --tag ${IMAGE} .
