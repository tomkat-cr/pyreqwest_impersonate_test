FROM public.ecr.aws/lambda/python:3.11

RUN yum -y update
RUN yum -y upgrade

RUN yum -y install \
    libxslt-devel libxml2-devel \
    redhat-rpm-config gcc libffi-devel python3-devel openssl-devel cargo pkg-config \
    git

COPY . ${LAMBDA_TASK_ROOT}

RUN pip install -r requirements.txt

CMD [ "app.app" ]
