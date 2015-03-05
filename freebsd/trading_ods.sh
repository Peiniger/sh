#!/bin/sh

################################################################################
# Author: Andy Nagels
# Date: 2015-03-05
#
# trading_ods.sh:
# This script cd's to the prd dir for nintai
# and loads the given ods with soffice.
################################################################################

DIR=$HOME/nintai/prd/doc
ODS=trade_20140311_V001_position_trading.ods

cd $DIR
soffice $ODS&
