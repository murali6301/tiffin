# Use the official Tomcat image from Docker Hub
FROM tomcat:9.0

# Remove the default Tomcat apps (optional but recommended)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps directory
COPY TIFFIN.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
