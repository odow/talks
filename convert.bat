set str= %1

jupyter nbconvert %str% --reveal-prefix=https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.5.0 --to slides

set slides=
set html_file=
call set slides=%%str:.ipynb=.slides.html%%
echo %str% %slides%
call set html_file=%%str:.ipynb=.html%%

move %slides% %html_file%

git add --all
git commit -m "Updated Slides"
git push
