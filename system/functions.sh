function cs() {
  cd "$@" && ls
}

function latexc() {
   
  pdflatex "${@:2}" "$1".tex 
  bibtex "$1".aux
  pdflatex "${@:2}" "$1".tex 
  pdflatex "${@:2}" "$1".tex 

  if [ ! -d "out/" ];
  then 
  	mkdir out
  fi
        
  EXTS=(aux bbl blg log out toc)
  for EXT in $EXTS; do
        mv "$1".$EXT out/	
  done

  if [[ $(uname) = 'Darwin' ]];
  then
       open "$1".pdf
  else
       acroread "$1".pdf
  fi
}

ldap() {
  ldapsearch -x -D ip914@IC.AC.UK -b "dc=ic,dc=ac,dc=uk" -H \
    "ldaps://ldaps-vip.cc.ic.ac.uk:636" -W \
    "(|(cn=$1)(sn=$1)(givenName=$1))"
}
