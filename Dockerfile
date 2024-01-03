# Use the official Julia Docker image as the base image
FROM julia:1.6

# Set the working directory inside the container
WORKDIR /app

# Copy the Julia project files to the container
COPY Project.toml .
COPY Manifest.toml .

# Install the Julia dependencies
RUN julia -e 'using Pkg; Pkg.activate("."); Pkg.instantiate();'

# Copy the application code to the container
COPY . .

# Expose the port on which the Dash app will run (replace <port> with the desired port number)
EXPOSE 8050

# Set the command to run the Dash app (replace app.jl with the entry point of your Dash.jl app)
CMD ["julia", "--project", "app.jl"]