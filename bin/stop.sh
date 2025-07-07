pid=$(pgrep -f "aui-ims-robot")

# 如果找到了进程ID，使用kill命令终止
if [ -n "$pid" ]; then
    echo "找到进程，PID为: $pid"
    # 使用SIGTERM信号优雅地终止进程
    kill -15 $pid
    echo "已发送终止信号给进程。"
else
    echo "未找到匹配的进程。"
fi