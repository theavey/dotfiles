# Alias to easily add aliases
alias realias='$EDITOR ~/.bash_aliases; source ~/.bashrc'
alias resource='source ~/.bashrc'

# alias rm='rm -i' 
alias ll='ls -l --color=auto' 
alias lh='ls -lrth --color=auto' 
alias la='ls -a --color=auto' 
alias molden='~/molden/molden5.2.gfortran.32 -l' 
alias gmolden='~/molden/gmolden5.1.gfortran.64 -l' 
alias wj='watch qstat -r -u theavey' 
alias wjb='watch qstat -u theavey' 
alias wja='watch qstat -u theavey,jmortiz,tdough' 
alias wjg='watch qstat -u theavey,jmortiz,tdough,ziletti,mlee03,miej,bmatt,justinap,coker,ahino16,dbade,makumar,fsegatta' 
alias ls='ls --color=auto' 
alias gview='/usr/local/apps/gaussian-09/bin/gview' 
alias cdmeta='cd /projectnb/nonadmd/theavey/metadynamics/' 
alias cdnbth='cd /projectnb/nonadmd/theavey/' 
alias abinit='/project/nonadmd/mattingly/apps/abinit/7.10.2/install/bin/abinit' 
alias cut3d='/project/nonadmd/mattingly/apps/abinit/7.10.2/install/bin/cut3d' 
#alias qchemmpi='/project/kbravgrp/programs/qchem_trunk_4.2.0_openmpi/bin/qchem' 
#alias qchem='/project/kbravgrp/programs/qchem_trunk_4.2.0/bin/qchem' 
alias subg='python ~/scripts/submit_gaussian.py' 
# PATH=$PATH:/projectnb/nonadmd/openbabel-2.3.2_local/bin 
alias outtolist='python ~/scripts/out_to_list.py' 
# alias for plumed sum_hills utility 
alias psumh='mpirun -n 1 plumed sum_hills --hills HILLS ' 
 
# Load anaconda and python 3.4 
alias py3='module load anaconda3; source activate py3' 

# PyCharm IDE
alias pycharm='pycharm/pycharm-community-2016.2/bin/pycharm.sh'

# transfer files to washington
# This doesn't work? Need to check how I did this on MBP
#alias scpw='scp tjhiv.ddns.net -P 12989'
alias sftpw='sftp -oPort=12989 tjhiv.ddns.net'

# enable shell integration for iterm2
alias shelli='source ~/.iterm2_shell_integration.bash'

# custom compiled CHARMM
alias charmm='/usr3/graduate/theavey/charmm/exec/gnu_M/charmm'


