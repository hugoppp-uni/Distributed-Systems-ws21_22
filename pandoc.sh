#coverts README.md to PDF with pandoc and eisvogel template

docker run --rm \
    -v `pwd`:/data \
    -w /data \
    rstropek/pandoc-latex \
    -f markdown \
    --template https://raw.githubusercontent.com/Wandmalfarbe/pandoc-latex-template/v2.0.0/eisvogel.tex \
    -t latex \
    --metadata-file=metadata.yaml \
    -o README.pdf \
    README.md

