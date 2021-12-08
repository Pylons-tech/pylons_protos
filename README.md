# pylons_protos
protos for the pylons ecosystem
## Dependencies
 - protodep (need more install instructions than this)
## Usage
Copy `example/protodep.toml` into your project, and set `proto_outdir` to the path you want the Pylons protos to be stored at. 
Note that protodep *will* erase any files in `proto_outdir`; as such, if your project contains any protos of its own, they must be stored in a separate folder.
Running `protodep up -u -f` will then download the Pylons protos and their dependencies. 
Note that this can take a **while**, even on a fast connection, and doesn't give you any console output while a repository is being retrieved. Don't panic!
(todo: build)