from public.ecr.aws/sam/build-python3.8

# Install dependencies
RUN yum group Install "Development Tools" -y
RUN yum install cmake -y