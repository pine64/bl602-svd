#!/usr/bin/env bash
xmllint ./soc602_reg.svd --noout --schema CMSIS-SVD_Schema_1_1.xsd
# don't ever return CI fail on xmllint issues - just report them
exit 0
