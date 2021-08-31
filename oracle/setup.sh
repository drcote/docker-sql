#!/bin/sh

{
  echo 'alter session set "_oracle_script"=true;'
  echo "create user hr identified by hr account unlock;"
  echo "grant dba to hr;"
  echo "conn hr/hr;"
  echo "@/opt/oracle/oradata/hr.sql"
} | $ORACLE_HOME/bin/sqlplus sys/Oracle18@localhost/XE as sysdba