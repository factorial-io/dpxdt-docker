#Dockerfile for local usage of dpxdt

The Dockerfile is based on `node` and will install python, pip, phantomjs and dpxdt.

Run it with

```
docker run -t factorial/dpxdt-docker -v /your/local/folder/with/your/tests:/tests test
```
