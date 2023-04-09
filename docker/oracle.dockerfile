FROM container-registry.oracle.com/database/enterprise:21.3.0.0

# Copy custom SQL scripts
COPY oracle/* /opt/oracle/scripts/setup
