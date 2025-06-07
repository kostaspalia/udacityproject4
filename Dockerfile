FROM python:3.8-slim-buster

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app/

# Upgrade pip and install Python dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Run the app
CMD ["python", "app.py"]
