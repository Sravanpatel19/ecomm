# Use Nginx base image
FROM nginx:latest

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx static HTML file
RUN rm -rf ./*

# Clone HTML code from GitHub repository
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/Sravanpatel19/ecomm.git .

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
