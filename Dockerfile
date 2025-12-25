# FIXED: Using a 'slim' image which has fewer vulnerabilities
FROM python:3.9-slim
WORKDIR /app
# Copy the requirements first to leverage Docker cache
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY api/ .
EXPOSE 5000
CMD ["python", "app.py"]