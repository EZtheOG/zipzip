# ZIPZIP Docker Container

This Docker Container is for running zip in a container. Why? I don't like the other ones out there. Yep...I said it.
My specific use case is for CI/CD build pipelines and I needed a container to be able to zip (specifically) Pythonic Lambda Functions.

# HOW TO USE! 
**["zip"] is set as ENTRYPOINT**
Pretty simple to use. This container creates and mounts `/build` as the container's working directory. Mount your directory to run zip:
`docker run -v $(pwd):/build eztheog/zipzip:$latest [OPTIONS] my_zip.zip file1 file2 file3`

* What to recursively zip a folder?:
`docker run -v $(pwd):/build eztheog/zipzip:$latest -r myZip.zip a_folder/`

* or exclude certain files?
 `docker run -v $(pwd):/build eztheog/zipzip:$latest -x '*.git* *.json* *.somethingelse*' -r myZip.zip a_folder/ `

By Default `-h` is passed if you run the container with no args. Same as ZIP.

## Contribute?
Fork/PR/Request.
