#Dockerfile for local usage of dpxdt

The Dockerfile is based on `node` and will install python, pip, phantomjs and dpxdt and beautifies the output of dpxdt with <https://github.com/factorial-io/beautify-dpxdt>.

Run it with

```
docker run -v /your/local/folder/with/your/tests:/tests -t factorial/dpxdt-docker update|test /tests
```
