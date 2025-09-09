# Use a specific, old, and vulnerable version of Alpine Linux
# Alpine 3.4 was released in 2016 and reached end-of-life long ago.
FROM alpine:3.4

# Install vulnerable dependencies
# The versions of 'openssl' and 'curl' available in the Alpine 3.4
# repository are known to have multiple CVEs (Common Vulnerabilities and Exposures).
RUN apk add --no-cache \
    openssl \
    curl \
    libc-utils

# A simple command to keep the container running for inspection
CMD ["/bin/sh"]
