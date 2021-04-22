APP_NAME=blog


create_app:
	python manage.py startapp ${APP_NAME}


run_app:
	python manage.py runserver