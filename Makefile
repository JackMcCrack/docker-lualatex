IMAGE_NAME = latex-build
DOCKER_CMD = docker
SUDO_CMD = sudo

all: setup run

setup:
	$(SUDO_CMD) $(DOCKER_CMD) build -t $(IMAGE_NAME) .

build:
	$(SUDO_CMD) $(DOCKER_CMD) run -v "`pwd`"/CV:/CV:Z -it $(CONTAINER_PARAMS) $(IMAGE_NAME):latest \
		for TEXFILE in `ls -1 *.tex`; do lualatex --interaction=batchmode --output-directory=output/ $TEXFILE; done

clean:
	rm -rf CV/output/*


.PHONY: all setup run clean build
