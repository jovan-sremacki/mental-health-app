# Use an official Ruby image as a parent image
FROM ruby:3.0.2

# Set the working directory in the container
WORKDIR /api

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install any needed packages specified in Gemfile
RUN bundle install

# Copy the current directory contents into the container at /api
COPY . .

# Define the script to be run when the container starts
CMD ["rails", "server", "-b", "0.0.0.0"]
