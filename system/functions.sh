
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
