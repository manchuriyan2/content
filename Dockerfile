FROM python:3.11

# Install dependencies
RUN apt update -y && apt upgrade -y && \
    apt install -y --no-install-recommends git && \
    rm -rf /var/lib/apt/lists/*

# Copy your application code
COPY . /app

WORKDIR /app

# Install Python dependencies
RUN pip3 install -r requirements.txt

# Command to run your application
CMD ["bash", "start"]
