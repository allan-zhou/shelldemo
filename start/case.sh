#! /bin/bash

function ask(){
    read -p "是否继续？" ans
    case $ans in
        y)
            echo "继续走起...."
            exit 1
        ;;
        n)
            echo "很遗憾，要停止啦..."
            exit 1
        ;;
        *)
            echo "你输入是什么命令，我不知道哦"
            ask
        ;;
    esac
}

ask