FROM alpine:latest

RUN apk add gcc g++ python3-dev hdf5-dev netcdf-dev py3-pip
RUN pip3 install copernicusmarine --break-system-packages

ENTRYPOINT ["/usr/bin/copernicusmarine"]

