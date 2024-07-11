# Use an appropriate base image
FROM ubuntu:20.04

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y \
    libicu66 \
    wget

# Create the required directory structure for the Trace Server
RUN mkdir -p /root/UnrealEngine/UnrealTrace/Store

# Copy the Trace Server binary and configuration to the image
COPY UnrealTraceServer /root/UnrealEngine/UnrealTrace/
COPY Settings.ini /root/UnrealEngine/UnrealTrace/

# Set the working directory
WORKDIR /root/UnrealEngine/UnrealTrace

# Expose the necessary ports
EXPOSE 1981
EXPOSE 1989

# Run the Trace Server in daemon mode
CMD ["./UnrealTraceServer", "daemon"]
