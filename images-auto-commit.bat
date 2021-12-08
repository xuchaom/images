::@echo off
@title bat 交互执行git命令
E:
cd E:/learning
:: 系统中不足两位时, 是补空格的, 我们判断到时空格, 用0来替换就可以了
set hour=%time:~,2%
if "%time:~,1%"==" " set hour=0%time:~1,1%
git pull
git status
git add .
git commit -m %date:~0,4%年%date:~5,2%月%date:~8,2%日%hour%时%time:~3,2%分%time:~6,2%秒
git push
call :waitTimes
exit

:waitTimes
ping/n 200 127.0.0.1