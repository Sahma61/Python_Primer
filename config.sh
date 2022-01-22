#!/bin/bash
while getopts m: flag
do
    case "${flag}" in
        m) message=${OPTARG};;
    esac
done


a=$(which git)
${a} branch -m main
${a} add .
${a} commit -m "a bash script"
${a} push -u origin main

