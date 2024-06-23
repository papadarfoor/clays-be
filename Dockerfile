FROM python:3.9

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /notes_project

COPY requirements.txt /notes_project/
RUN pip install -r requirements.txt

COPY . /notes_project/

RUN python ./notes_project/manage.py migrate

CMD ["python", "./notes_project/manage.py", "runserver", "0.0.0.0:8000"]
