FROM python:3.6
EXPOSE 8080

# Install app dependencies
COPY src/requirements.txt /

RUN pip install -r requirements.txt


# Create app directory
WORKDIR /app


# Bundle app source
COPY . /app



ENTRYPOINT [ "python", "app.py" ]