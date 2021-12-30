#!/bin/sh

outdir=schema
lang=jsonschema
protopath=prototmp

protoc --proto_path=$protopath/ --${lang}_out=$outdir/ $protopath/tendermint/abci/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ $protopath/tendermint/crypto/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ $protopath/tendermint/types/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ $protopath/tendermint/version/*

protoc --proto_path=$protopath/ --${lang}_out=$outdir/ $protopath/cosmos/auth/v1beta1/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ $protopath/cosmos/base/v1beta1/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ $protopath/cosmos/base/abci/v1beta1/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ $protopath/cosmos/base/query/v1beta1/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ $protopath/cosmos/crypto/multisig/v1beta1/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ $protopath/cosmos/crypto/ed25519/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ $protopath/cosmos/crypto/secp256k1/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ $protopath/cosmos/tx/signing/v1beta1/*
protoc --proto_path=$protopath/ --${lang}_out=$outdir/ $protopath/cosmos/tx/v1beta1/*

mv  -v $protopath/* proto/*

protoc --proto_path=proto/ --${lang}_out=$outdir/ proto/pylons/*
