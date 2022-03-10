NOTEBOOK_LOCAL=hello_mnist_tfq.ipynb

help:
	@echo make env
	@echo make install
	@echo make run
	@echo make run-ui
	@echo make clean

env:
	python3 -m venv venv
	# . venv/bin/activate
	# NAA. run setenv.sh manually via . venv/bin/activate

install:
	python3 -m pip install --upgrade pip
	pip install -r requirements.txt

run:
	jupyter lab

run-ui:
	jupyter lab $(NOTEBOOK_LOCAL)

clean:
	rm -fr venv

