#!/bin/bash

cd jni && ndk-build && cd .. && ant debug install
