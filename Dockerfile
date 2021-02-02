# Sample Dockerfile

# Indicates that the windowsservercore image will be used as the base image.
FROM golang


# Uses dism.exe to install the IIS role.
RUN go get github.com/sojij0y/SojiSource

WORKDIR /go/src/app


RUN cp /go/src/github.com/sojij0y/SojiSource/APISample4.go /go/src/app

RUN go build /go/src/app/APISample4.go
#EXPOSE 10000
# Sets a command or process that will run each time a container is run from the new image.
CMD [ "/go/src/app/APISample4" ]
