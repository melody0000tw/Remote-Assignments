//: [Previous](@previous)

/*:
 Part 1: Git & GitHub
 ===
 
 ### 2. Here are some Git and GitHub commands we usually use in software development. Please explain the meanings and use cases of them.
 
 
 - git status
    - 一種git指令，確認目前git的狀態，是否有新增其他內容尚未提交commit
 
 - git diff
    - commit本身和parent commit之間的差異，通常會儲存在commit中
 
 - git add
    - 一種git指令，表示將檔案放入git stage暫存區，準備commit
    - git add README.md -> 表示將這個README.md檔案放入 git stage
    - git add . -> 表示將所有新的變更都放入 git stage
 
 - git reset
    - 一種git指令，表示重置原本提交至 git stage 或 commit 的內容
    - git reset HEAD . -> 表示重置git stage狀態
    - git reset HEAD^  -> 表示重置git commit狀態
 
 - git log
    - 一種git指令，可以查看commit的紀錄
    - git log -p -> 檢視所有commit紀錄包含diff
    - git log -5 -> 最新的五個commit
    - git log —oneline -> 只看總結
    - git log --graph -> 顯示ASCII樹狀圖
    - git --log decorate -> 會加上branch name
    - git log --graph -> 顯示ASCII樹狀圖
    - git shortlog -> 把不同人的commit分開顯示
    - git shortlog origin/master..Head -> 從origin/master 到現在位置(HEAD)所有的commit 並按照作者分類
    - git log --author="Sam" -> 搜尋某個作者的commit
    - git log --grep="idea" -> 搜尋包含某個字的commit message
    - git log -- README.md -> 屬於README.md所有的commit
    - git log -S"[x]" -p`-> diff中含有 "[x]" 的commit
 
 - git branch
    - 一種git指令，查看目前有的分支
    - git branch  -> 確認目前local有哪些分支
    - git branch myBranch  -> 創建一個新的myBranch分支
    - git checkout myBranch -> 切換到myBranch分支
    - git checkout -b myNewBranch ->  新建一個新的分支並切換過去 (=  git branch myBranch + git checkout myBranch)
    - git branch -d tiger -> 把tiger分支刪除（僅限tiger這個branch還沒有任何commit時）
    - git branch -D tiger -> 強制把tiger分支刪除（連同裡面的commit也一起刪掉）
 
 - git merge
    - 一種git指令，將不同的branch合併
    - git merge myBranch -> 將myBranch合併到我現在的branch中
    - fast forward merge -> 若主branch沒有新的commit但要被併入的branch有，會自動產生fast forward merge，就會直接把主branch的HEAD/master標籤貼到要被併入的branch，也不會出現沒有merge commit，也不能寫commit message
    - git merge --no-f myBranch -> 強制不要fast forward merge，會保留merge commit，可以寫commit message
 
 - git push repo_name branch_name
    - 一種git指令，將本地的branch_name資料庫同步到遠端的repo_name資料庫
 
 - git remote
    - 一種git指令，可以看到目前有連線到的remote repo有哪些
    - git remote -v -> 可以看到remote repo的位置
 
 - fork
    - 將別人的remote repo複製到自己的remo repo中，類似建立副本
 
 - git rebase
    - 一種git指令，可以重新定義合併分支的參考基準，可以讓git log 更線性化更整齊
    - 和merge不同的是，他不會產生一個新的commit，而是會把主分支上的commit放到被rebase的分支上
    - git rebase myBranch -> 把我現在的分支重新定義參考基準到my Branch這個分支上
 
 - git cherry-pick
    - 一種git指令，可以撿別的分支的commit下來用在自己的分支上，可以只選擇特定commit結合，不必全部branch都合併
 
 - git reflog
    - 一種git指令，可列印出所有「歷史紀錄」的版本變化，包含已經被刪除的commit或reset的commit，是操作git的安全保障
 
 - git tag
    - 一種標籤，通常會加在某個特定里程碑的commit上面
    - 有分輕量標籤（lightweight tag）跟附註標籤（annotated tag），附註標籤可以寫tag message
    - git tag version10.0 51d54ff -> 把version10.0這個標籤貼到51d54ff這個commit上面
 
 
 
 ### 3.Please describe how to establish a GitHub repo and how to upload the local projects to GitHub. Try to explain your answers with as much detail as possible.

 **在github(remote端)**
 1. 先創立一個GitHub帳號
 2. 建立一個new repository
 3. 複製 nre repository的http網址（以下簡稱 http網址 ）
 
 **在終端機(local端)**
 1. 在終端機將檔案注入git (git add -> git commit )
 2. 輸入 git remote -vv 確認目前的local repo沒有追蹤任何remote repo
 3. 輸入 git remote add origin http網址 ，建立 local repo 和 remote repo的關係，其中origin只是remote repo的代名詞可以自行更改
 4. 再次輸入 git remote -vv 確認目前追蹤的remote repo是否正確
 5. 輸入 git push --set-upstream origin master 確保本地端追蹤的是master這個分支
 6. 之後本地端新增commit，只要輸入輸入 git push ，就可以將本地的repo就會push到remote repo上了。
 
 
 */


//: [Next](@next)

