.class Lcom/huawei/videoengine/LogFile$LogDumper;
.super Ljava/lang/Thread;
.source "LogFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/LogFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogDumper"
.end annotation


# instance fields
.field cmds:Ljava/lang/String;

.field private logcatProc:Ljava/lang/Process;

.field private mPID:Ljava/lang/String;

.field private mReader:Ljava/io/BufferedReader;

.field private mRunning:Z

.field private out:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/huawei/videoengine/LogFile;


# direct methods
.method public constructor <init>(Lcom/huawei/videoengine/LogFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "pid"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 132
    iput-object p1, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->this$0:Lcom/huawei/videoengine/LogFile;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 126
    iput-object v1, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mReader:Ljava/io/BufferedReader;

    .line 127
    iput-boolean v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mRunning:Z

    .line 128
    iput-object v1, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->cmds:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->out:Ljava/io/FileOutputStream;

    .line 133
    iput-object p2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mPID:Ljava/lang/String;

    .line 135
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, p3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->out:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    const-string v1, "logcat"

    iput-object v1, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->cmds:Ljava/lang/String;

    .line 154
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 163
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->cmds:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 164
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mReader:Ljava/io/BufferedReader;

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "line":Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 167
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mRunning:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_5

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 184
    iput-object v6, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 186
    :cond_2
    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_3

    .line 188
    :try_start_1
    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 189
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 194
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_4

    .line 196
    :try_start_2
    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 200
    :goto_2
    iput-object v6, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->out:Ljava/io/FileOutputStream;

    .line 205
    .end local v1    # "line":Ljava/lang/String;
    :cond_4
    :goto_3
    return-void

    .line 168
    .restart local v1    # "line":Ljava/lang/String;
    :cond_5
    :try_start_3
    iget-boolean v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mRunning:Z

    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->this$0:Lcom/huawei/videoengine/LogFile;

    invoke-static {v2}, Lcom/huawei/videoengine/LogFile;->access$0(Lcom/huawei/videoengine/LogFile;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->out:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->this$0:Lcom/huawei/videoengine/LogFile;

    invoke-static {v4}, Lcom/huawei/videoengine/LogFile;->access$1(Lcom/huawei/videoengine/LogFile;)Ljava/text/SimpleDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 179
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v2, :cond_6

    .line 183
    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 184
    iput-object v6, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 186
    :cond_6
    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_7

    .line 188
    :try_start_5
    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 189
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 194
    :cond_7
    :goto_4
    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_4

    .line 196
    :try_start_6
    iget-object v2, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 200
    :goto_5
    iput-object v6, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->out:Ljava/io/FileOutputStream;

    goto :goto_3

    .line 190
    :catch_1
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 197
    :catch_2
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 182
    iget-object v3, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v3, :cond_8

    .line 183
    iget-object v3, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 184
    iput-object v6, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 186
    :cond_8
    iget-object v3, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v3, :cond_9

    .line 188
    :try_start_7
    iget-object v3, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 189
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 194
    :cond_9
    :goto_6
    iget-object v3, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_a

    .line 196
    :try_start_8
    iget-object v3, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 200
    :goto_7
    iput-object v6, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->out:Ljava/io/FileOutputStream;

    .line 203
    :cond_a
    throw v2

    .line 190
    :catch_3
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 198
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "line":Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 198
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public stopLogs()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/LogFile$LogDumper;->mRunning:Z

    .line 158
    return-void
.end method
