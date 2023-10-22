
build_operator:
	make -C operator docker

k8s_local:
	kind create cluster
	kind load docker-image lugh
	kubectl apply -k k8s-resources

all: build_operator k8s_local

clean:
	@echo ===Cleaning up kind cluster===
	kind delete cluster
