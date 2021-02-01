# Sample Dockerfile

# Indicates that the windowsservercore image will be used as the base image.
FROM golang


# Uses dism.exe to install the IIS role.
RUN ./Sample

WORKDIR /go/src/app


RUN cp ./Sample/APISample4.go /go/src/app

RUN go run /go/src/app/APISample4.go

# Sets a command or process that will run each time a container is run from the new image.
CMD [ "/go/src/app/APISample4" ]