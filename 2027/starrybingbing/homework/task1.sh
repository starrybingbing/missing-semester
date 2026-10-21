#!/bin/bash
NOTE_FILE="../notes/lesson1.md"
{
    echo "===运行脚本时的系统时间==="
    date
    echo -e "\n===最近使用的10条命令==="
    history | tail -n 10
    echo -e "\n===笔记的字数==="
    if [ -f "$NOTE_FILE" ]; then
        wc -m < "$NOTE_FILE"
    else 
        echo "找不到文件"
    fi
} >output.txt
echo "运行完成"
