#!/bin/bash
service xinetd restart
service ssh restart
exec $@
