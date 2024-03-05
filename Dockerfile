# Use official Spark Docker image as base
# FROM apache/spark:3.2.0
# FROM apache/spark:python3
FROM jupyter/pyspark-notebook:python-3.9

USER root
# Set environment variables for Spark
# ENV SPARK_HOME="/opt/spark"
# ENV PYTHONPATH="/opt/conda/bin/python"
# ENV PATH="${SPARK_HOME}/bin:${PATH}"
# RUN ln -s /usr/bin/python3 /usr/bin/python
# Install Python dependencies
# RUN apt-get update && \
#     apt-get install -y python3 python3-pip

# Install Python dependencies
# RUN pip install zenml[server]==0.53.1
#     apt-get install -y python3 python3-pip

# Create a symbolic link to make python point to python3


# # Set working directory
# WORKDIR /app

# # Copy requirements file and install dependencies
# COPY requirements.txt .
# RUN pip3 install --no-cache-dir -r requirements.txt

# # Copy your Python web app code into the container
# COPY . /app

# # Expose the port your app runs on
# EXPOSE 8080

# # Define the entry point to run the server
# ENTRYPOINT ["python3", "your_app_main_file.py"]
