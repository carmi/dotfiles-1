function gril() {
  if [ $# -eq 0 ];then
    print "usage:\n\t$0 <n>"
    print "\n\tExpands into: git rebase -i \"HEAD~<n>\""
  fi

  if [ $# -eq 1 ];then
    git rebase -i "HEAD~$1"
  fi
}
function grila() {
  if [ $# -eq 0 ];then
    print "usage:\n\t$0 <n>"
    print "\n\tExpands into: git add .; git commit -m refactor; gril <n>\""
  fi

  if [ $# -eq 1 ];then
    git add .; git commit -m refactor; gril $1
  fi
}
