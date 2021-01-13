FROM python:3.7.9

# set work directory
RUN mkdir -p $MICRO_SERVICE
# where your code lives
WORKDIR $MICRO_SERVICE

# install dependencies
RUN pip install --upgrade pip
# copy project
COPY src/ $MICRO_SERVICE
RUN pip install -r requirements.txt
EXPOSE 5000
CMD python app.py