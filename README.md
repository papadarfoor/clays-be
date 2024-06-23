# Clays Notes Backend

This repository contains the backend Django application for Clays, a note-taking web application.

## Getting Started

### Prerequisites

- Python 
- Docker (optional, for running with Docker)

### Setup Instructions

1. **Clone the repository:**

    ```bash
    git clone https://github.com/papadarfoor/clays-be.git
    cd clays-be
    ```

2. **Set up a Virtual Environment (optional but recommended):**

    ```bash
    # Create a virtual environment named 'venv'
    python -m venv venv

    # Activate the virtual environment
    # On macOS/Linux:
    source venv/bin/activate
    # On Windows:
    venv\Scripts\activate
    ```

3. **Install dependencies:**

    ```bash
    pip install -r requirements.txt
    ```

4. **Apply migrations:**

    ```bash
    python manage.py migrate
    ```

5. **Run the development server:**

    ```bash
    python manage.py runserver
    ```

6. **Access the application:**

   Open a web browser and go to [http://localhost:8000](http://localhost:8000)
### Running with Docker

You can also run this Django application using Docker for easier setup and environment isolation.

#### Prerequisites

- Docker: [Install Docker](https://docs.docker.com/get-docker/)

#### Setup Instructions with Docker

1. **Clone the repository:**

    ```bash
    git clone https://github.com/papadarfoor/clays-be.git
    cd clays-be
    ```

2. **Build the Docker image:**

    ```bash
    docker build -t clays-be .
    ```

3. **Run the Docker container:**

    ```bash
    docker run -p 8000:8000 clays-be
    ```

4. **Access the application:**

   Open a web browser and go to [http://localhost:8000](http://localhost:8000)

