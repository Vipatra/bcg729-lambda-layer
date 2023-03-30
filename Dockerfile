from public.ecr.aws/sam/build-python3.8

# Install dependencies
yum group Install "Development Tools" -y
yum install cmake -y