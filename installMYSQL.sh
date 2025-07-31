#!/bin/bash

dnf install mysql -y
dnf enable msqld
dnf start mysqld