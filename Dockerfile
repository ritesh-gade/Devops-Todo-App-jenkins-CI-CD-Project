FROM python:3

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Upgrade pip and install necessary dependencies
RUN pip install --upgrade pip setuptools wheel

# Install Django and other dependencies
RUN pip install -r requirements.txt

# Run database migrations
RUN python manage.py migrate

# Run the Django application
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
