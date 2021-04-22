APP_NAME=blog


create_app:
	python manage.py startapp ${APP_NAME}


run_app:
	python manage.py runserver

# ----------------------------------
#    CLEANING COMMAND
# ----------------------------------

clean:
	@rm -fr */__pycache__
	@rm -fr __pycache__
	@rm -fr */.ipynb_checkpoints
	@rm -fr .ipynb_checkpoints

	@rm -fr *.egg-info