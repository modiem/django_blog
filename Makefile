APP_NAME=blog


create_app:
	python manage.py startapp ${APP_NAME}


run_app:
	python manage.py runserver

create_admin_account:
	python manage.py createsuperuser
	python manage.py migrate
	python manage.py createsuperuser

update_database:
	python manage.py makemigrations
	python manage.py sqlmigrate blog 0001
	python manage.py migrate

# ----------------------------------
#    CLEANING COMMAND
# ----------------------------------

clean:
	@rm -fr */__pycache__
	@rm -fr __pycache__
	@rm -fr blog/*/__pycache__
	@rm -fr */.ipynb_checkpoints
	@rm -fr .ipynb_checkpoints

	@rm -fr *.egg-info