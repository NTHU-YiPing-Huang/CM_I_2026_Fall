conda activate jb2

jupyter book init

# edit some content of myst.yml
# edit some content of syllabus.md
# add toc in the myst.yml

# create git repo
gh repo create $git_repo_name --public
# init the repo
git init
git add .
git commit -m "first commit"

# create the deploy file
jupyter book init --gh-pages
git add .
git commit -m "with deploy"
git remote add origin git@github.com:NTHU-YiPing-Huang/CM_I_2026_Fall.git
git push -u origin main
