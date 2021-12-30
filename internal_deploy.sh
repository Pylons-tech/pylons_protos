#!/bin/sh

outdir=schema
lang=jsonschema
protopath=prototmp

protoc --proto_path=$protopath/ --${lang}_out=$outdir/ proto/tendermint/abci/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ proto/tendermint/crypto/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ proto/tendermint/types/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ proto/tendermint/version/*

protoc --proto_path=$protopath/ --${lang}_out=$outdir/ proto/cosmos/auth/v1beta1/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ proto/cosmos/base/v1beta1/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ proto/cosmos/base/abci/v1beta1/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ proto/cosmos/base/query/v1beta1/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ proto/cosmos/crypto/multisig/v1beta1/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ proto/cosmos/crypto/ed25519/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ proto/cosmos/crypto/secp256k1/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ proto/cosmos/tx/signing/v1beta1/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ proto/cosmos/tx/v1beta1/*

mv  -v ~$protopath/* ~proto/*

protoc --proto_path=proto/ --${lang}_out=$outdir/ proto/pylons/*
