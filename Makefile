install:
	pip install	--upgrade pip && \
	pip install -r requirements.txt

format: 
	black *.py
lint:
	pylint --fail-under=-1 gradient_descent_example.py
