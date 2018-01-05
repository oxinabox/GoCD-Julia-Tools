#!/bin/bash

case $JULIA_VERSION in
	0.6)
		JULIA_CMD=julia0.6
		;;
	*)
		JULIA_CMD=julia
esac

$JULIA_CMD -e $@


