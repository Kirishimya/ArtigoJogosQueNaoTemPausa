chmod +x compila_pdflatex.sh
docker run -it --rm -v "$(pwd)":/data texlive-full-br pdflatex Modelo_Artigo.tex
