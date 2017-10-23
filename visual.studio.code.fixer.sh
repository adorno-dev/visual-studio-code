#!/bin/bash

# Visual.Studio.Code.Fixer.sh ~ CSS layout fixer for VSCode Editor
#
# Authors:
#   Adorno <adorno@protonmail.com>
#

workbench_file="/opt/visual-studio-code/resources/app/out/vs/workbench/workbench.main.css"

font_ide="SFNS Display"
font_src="Consolas for Powerline"

sudo sed -s -i s/"-apple-system"/"$font_ide"/g $workbench_file
sudo echo ".title-label{font-weight:bolder !important}" >> $workbench_file
sudo echo ".scope{font-size:12.7px !important}" >> $workbench_file
sudo echo ".actions-container .action-item{font-weight:bolder !important}" >> $workbench_file
sudo echo ".monaco-tree-row .expression{font-family:'$font_src' !important; font-size: 1.07em !important}" >> $workbench_file
sudo echo "*{text-shadow:1px 2px black}" >> $workbench_file