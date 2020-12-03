# Build the deployment container
FROM gliderlabs/alpine:latest

# Copy compiled musl binary
COPY pingcli-rs ./

# Set executable permissions
RUN ["chmod", "+x", "/pingcli-rs"]

# Execute binary
CMD /pingcli-rs -e email@gmail.com
