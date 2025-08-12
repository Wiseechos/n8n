# Use official n8n image
FROM n8nio/n8n

# Set working directory
WORKDIR /data

# Make sure Render's port is used
ENV N8N_PORT=$PORT
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http

# Optional: disable telemetry if you want
ENV N8N_DIAGNOSTICS_ENABLED=false

# Expose the port (Render will override with $PORT)
EXPOSE $PORT

# Start n8n
CMD ["n8n", "start"]
