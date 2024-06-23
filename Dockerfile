# Use an official Python runtime as a parent image
FROM python:3.9

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /notes_project

# Install dependencies
COPY requirements.txt /notes_project/
RUN pip install -r requirements.txt

# Copy the local code to the container
COPY . /notes_project/

# Run migrations (if your Django app needs it)
RUN python ./notes_project/manage.py migrate

# Command to run the Django app
CMD ["python", "./notes_project/manage.py", "runserver", "0.0.0.0:8000"]
