
```sh
$ git status (현재 깃 상태 확인)

$ git add <dir|file name> (디렉토리, 파일 변경사항 추가)
$ git rm [-rf] <dir|file name> (디렉토리, 파일 적용하던것에서 삭제)

$ git commit -m "short comment" (짧은 코멘트와함께 커밋하기)

$ git branch (브랜치 목록보기)
$ git branch -d <branch name> (브랜치 지우기)
$ git branch -m <before branch> <after branch> (앞에 있던 branch 이름을 뒤에적은 이름으로 바꾸기)
$ git checkout <branch name> (브랜치 바꾸기)
$ git merge <branch name> (현재 있던 branch에 입력한 branch 합치기)

$ git stash (트래킹중이였던 작업중인 내용 임시저장)

$ git pull <remote repo> (fetch + merge 하기)
$ git push -u <remote> <local-branch> (local 에서 만든 branch를 remote에 추가)

$ git log (--decorate --graph --branches) (다른 브랜치를 포함한 커밋구조 확인)

```