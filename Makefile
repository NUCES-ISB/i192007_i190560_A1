install:
	pip install	--upgrade pip && \
	pip install -r requirements.txt

format: 
	black *.py
lint:
	pylint --disable=R,C gradient_descent_example.py
  
	 
