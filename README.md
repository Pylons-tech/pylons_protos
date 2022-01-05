# pylons_protos
Protocol buffer types for the pylons ecosystem
## Dependencies
* [protoc](https://grpc.io/docs/protoc-installation/)
* An appropriate protoc plugin for the language you're compiling to
* [protodep](https://github.com/stormcat24/protodep)

## Installation
Copy the files in the `example` folder into your project. Then:

1. Edit the `proto_outdir` field in `protodep.toml` to the path you want to store the protodep-managed proto files at.
2. Edit the variables in the `pylons_proto_deploy_build` scripts as follows:
	* `outdir` - the relative path generated code should be stored at
	* `lang` - the language prefix to use for the protoc plugin you're compiling with (for instance, C++ would be `cpp`, since the protoc option is `cpp_out`
	* `protopath` - `proto_outdir`

It's also **strongly recommended** that your project's .gitignore file includes the location the protos are being downloaded to.

## Usage
Run `protodep up -u -f` to download the Pylons protos and their dependencies. 
Note that protodep *will* erase any files in `proto_outdir`; as such, if your project contains any protos of its own, they must be stored in a separate folder.

Also note that this can take a **while**, even on a fast connection, and doesn't give you any console output while a repository is being retrieved. Don't panic!

Once you've obtained the required protos, run `pylons_proto_deploy_build.sh` or `pylons_proto_deploy_build.bat` to build the Pylons types and their dependencies.
