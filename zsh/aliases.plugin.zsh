  alias a=ant
  alias code='cd ~/code/'

  #SFDX
  alias dx='sfdx'
  alias dx:o='sfdx force:org'
  alias dx:od='sfdx force:org:delete -p'
  alias dx:oo='sfdx force:org:open '
  alias dx:ol='sfdx force:org:list --skipconnectionstatus'
  alias dx:sp='sfdx force:source:push -f'
  alias deploy:new='f() { caffeinate ant deploy -Dcreate.new.org=true -Dorg.username=$1 }; f'
  alias deploy='f() { caffeinate ant deploy -Dcreate.new.org=false -Dorg.username=$1 }; f'
  alias dx:tests:all="f() { sfdx force:apex:test:run -d testresults -w 50 -u \$1 -l RunLocalTests -r human }; f"
  alias gupadb="gupa --tags -f && g dmb"

  dx:tests(){
    if [ ! -z $2 ]
    then
      local CLASSNAMES=$(find $2 -iname '*.cls' -type f -exec basename -s .cls {} + | sed 's/^/'$3'/' | paste -sd ',' -)
      echo "Running tests: ${CLASSNAMES}"
      sfdx force:apex:test:run -w 50 -u ${1} -l RunSpecifiedTests -r human -n ${CLASSNAMES}
    else
      echo "Running All tests. This could take a while..."
      sfdx force:apex:test:run -w 50 -u ${1} -l RunLocalTests -r human
    fi
  }

  update(){
    # update ZSH
    omz update
    
    echo "Updating OMZ custom plugins + themes"
    find ~/.oh-my-zsh/custom -type d -exec test -e '{}/.git' ';' -print -prune -exec git --git-dir={}/.git --work-tree={} pull \;  

    # update brew and cleanup
    echo "Updating + cleaning brew"
    brew update; brew upgrade; brew cleanup; brew doctor

    echo "Updating global npm packages"
    npm update -g
  }


  fnm:upgrade(){
    CURRENTPACKAGES=$(npm ls -g | cut -d "@" -f1 | cut -d " " -f2 | tail -n +2 | tr "\n" " " | awk '{$1=$1};1')

    LATESTNODE=$(fnm ls-remote | cut -d "." -f1 | cut -d "v" -f2 | tail -1)
    echo "Installing node v$LATESTNODE"
    fnm install $LATESTNODE
    fnm default $LATESTNODE

    npm i -g $CURRENTPACKAGES
  }
