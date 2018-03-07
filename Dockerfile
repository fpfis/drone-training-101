
# Base image :
FROM fpfis/php56-build

# Create a folder for my app in the container
RUN mkdir /app

# Make the image work in this directory by default
WORKDIR /app

# Push my local files to the image
ADD . /app

# Run composer install to get my app ready
RUN composer install

# Specify which command to run when my container starts
ENTRYPOINT [ "php", "/app/hello.php" ]