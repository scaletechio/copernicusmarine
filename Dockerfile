FROM alpine:latest
MAINTAINER scaletech.io

# execute a system upgrade to minimize vulnerabilites
RUN apk update && apk upgrade --available

# install needed packages
RUN apk add gcc g++ python3-dev hdf5-dev netcdf-dev py3-pip

# install cmc
RUN pip3 install copernicusmarine --break-system-packages

# create unprivileged user
RUN adduser -h /home/cmc -D -g cmc -u 1000 cmc
USER 1000

# set entrypoint
ENTRYPOINT ["/usr/bin/copernicusmarine"]

