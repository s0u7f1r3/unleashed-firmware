user=builder
branch=builder
commit=origin/dev

dockerbuild:
	docker build . -t builder --build-arg user=${user} --build-arg branch=${branch} --build-arg commit=${commit}

dockerenter: dockerrm
	docker run --rm --name builder -v ${PWD}/dist/:/dist/ -ti builder bash

dockercp: dockerrm
	docker run --rm --name builder -v ${PWD}/dist/:/dist/ -ti builder bash -c "cp -rfv ./dist/* /dist/"

dockerrm:
	docker rm builder || true
