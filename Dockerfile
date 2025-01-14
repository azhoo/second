# Use the official Go image from Docker Hub
FROM golang:1.20

# Install additional tools if needed (e.g., Git, curl, etc.)
RUN apt-get update && apt-get install -y \
    git curl vim && \
    apt-get clean

# Set the working directory in the container
WORKDIR /workspace

# Install Go tools or dependencies (optional)
RUN go install golang.org/x/tools/gopls@latest

# Expose the workspace directory
VOLUME /workspace

# Set the container's default command
CMD ["bash"]
