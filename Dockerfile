from public.ecr.aws/sam/build-python3.8

# Install dependencies
RUN yum group Install "Development Tools" --setopt=group_package_types=mandatory,default,optional -y
RUN yum install cmake -y