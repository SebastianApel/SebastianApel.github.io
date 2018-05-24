
docker rm beautiful-jekyll ; docker run -p 4000:4000 --name beautiful-jekyll -v "$PWD":/srv/jekyll beautiful-jekyll bundle exec jekyll build
#"bundle exec jekyll build"

git --git-dir=.git --work-tree=_site add --all
git --git-dir=.git --work-tree=_site commit -m "autogen: update site"
git --git-dir=.git --work-tree=_site push
