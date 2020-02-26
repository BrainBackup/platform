#! /bin/bash
packer build -force -var-file=variables_packer.json packer.json
