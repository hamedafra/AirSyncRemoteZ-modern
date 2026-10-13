.class public Lcom/huawei/videoengine/LogFile;
.super Ljava/lang/Object;
.source "LogFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/LogFile$LogDumper;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/huawei/videoengine/LogFile;

.field private static TraceFile:Ljava/io/File;

.field private static filePath:Ljava/lang/String;

.field private static fileWrite:Ljava/io/FileOutputStream;

.field private static logFile:Ljava/io/File;


# instance fields
.field private logLineList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogDumper:Lcom/huawei/videoengine/LogFile$LogDumper;

.field private mPId:I

.field private simpleDateFormat2:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/videoengine/LogFile;->INSTANCE:Lcom/huawei/videoengine/LogFile;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/LogFile;->mLogDumper:Lcom/huawei/videoengine/LogFile$LogDumper;

    .line 38
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/LogFile;->mPId:I

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/videoengine/LogFile;->simpleDateFormat2:Ljava/text/SimpleDateFormat;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/videoengine/LogFile;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/huawei/videoengine/LogFile;->mPId:I

    return v0
.end method

.method static synthetic access$1(Lcom/huawei/videoengine/LogFile;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/videoengine/LogFile;->simpleDateFormat2:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static getInstance()Lcom/huawei/videoengine/LogFile;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/huawei/videoengine/LogFile;->INSTANCE:Lcom/huawei/videoengine/LogFile;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/huawei/videoengine/LogFile;

    invoke-direct {v0}, Lcom/huawei/videoengine/LogFile;-><init>()V

    sput-object v0, Lcom/huawei/videoengine/LogFile;->INSTANCE:Lcom/huawei/videoengine/LogFile;

    .line 34
    :cond_0
    sget-object v0, Lcom/huawei/videoengine/LogFile;->INSTANCE:Lcom/huawei/videoengine/LogFile;

    return-object v0
.end method


# virtual methods
.method public start(Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/videoengine/LogFile;->logFile:Ljava/io/File;

    .line 46
    sget-object v1, Lcom/huawei/videoengine/LogFile;->logFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    sget-object v1, Lcom/huawei/videoengine/LogFile;->logFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 50
    :try_start_0
    sget-object v1, Lcom/huawei/videoengine/LogFile;->logFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/huawei/videoengine/LogFile;->mLogDumper:Lcom/huawei/videoengine/LogFile$LogDumper;

    if-nez v1, :cond_1

    .line 57
    new-instance v1, Lcom/huawei/videoengine/LogFile$LogDumper;

    iget v2, p0, Lcom/huawei/videoengine/LogFile;->mPId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/huawei/videoengine/LogFile$LogDumper;-><init>(Lcom/huawei/videoengine/LogFile;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/videoengine/LogFile;->mLogDumper:Lcom/huawei/videoengine/LogFile$LogDumper;

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/huawei/videoengine/LogFile;->mLogDumper:Lcom/huawei/videoengine/LogFile$LogDumper;

    invoke-virtual {v1}, Lcom/huawei/videoengine/LogFile$LogDumper;->start()V

    .line 59
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/huawei/videoengine/LogFile;->mLogDumper:Lcom/huawei/videoengine/LogFile$LogDumper;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/huawei/videoengine/LogFile;->mLogDumper:Lcom/huawei/videoengine/LogFile$LogDumper;

    invoke-virtual {v0}, Lcom/huawei/videoengine/LogFile$LogDumper;->stopLogs()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/LogFile;->mLogDumper:Lcom/huawei/videoengine/LogFile$LogDumper;

    .line 66
    :cond_0
    return-void
.end method

.method public writetoTrace()V
    .locals 11

    .prologue
    .line 70
    :try_start_0
    sget-object v8, Lcom/huawei/videoengine/LogFile;->fileWrite:Ljava/io/FileOutputStream;

    if-eqz v8, :cond_0

    .line 72
    sget-object v8, Lcom/huawei/videoengine/LogFile;->fileWrite:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 73
    sget-object v8, Lcom/huawei/videoengine/LogFile;->fileWrite:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/hme_v_log_trace.txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/huawei/videoengine/LogFile;->TraceFile:Ljava/io/File;

    .line 80
    sget-object v8, Lcom/huawei/videoengine/LogFile;->TraceFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 82
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/huawei/videoengine/LogFile;->logLineList:Ljava/util/ArrayList;

    .line 83
    const-string v7, ""

    .line 85
    .local v7, "temp":Ljava/lang/String;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    sget-object v8, Lcom/huawei/videoengine/LogFile;->logFile:Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 86
    .local v6, "stream":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "GB2312"

    invoke-direct {v8, v6, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 87
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 90
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 98
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    :goto_2
    const/4 v4, 0x0

    .line 101
    .local v4, "index":I
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    sget-object v8, Lcom/huawei/videoengine/LogFile;->TraceFile:Ljava/io/File;

    const/4 v9, 0x1

    invoke-direct {v5, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 102
    .local v5, "outStream":Ljava/io/FileOutputStream;
    :goto_3
    iget-object v8, p0, Lcom/huawei/videoengine/LogFile;->logLineList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, v4, :cond_2

    .line 108
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 109
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 121
    .end local v4    # "index":I
    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    .end local v7    # "temp":Ljava/lang/String;
    :goto_4
    return-void

    .line 75
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "temp":Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v8, p0, Lcom/huawei/videoengine/LogFile;->logLineList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 91
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 92
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v8, "Logerr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/huawei/videoengine/LogFile;->logFile:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "not exist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 93
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 94
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "Logerr"

    const-string v9, "code or readLine"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 104
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "index":I
    .restart local v5    # "outStream":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_4
    iget-object v8, p0, Lcom/huawei/videoengine/LogFile;->logLineList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, "buf":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    .line 110
    .end local v1    # "buf":Ljava/lang/String;
    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 112
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 113
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 115
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 119
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "index":I
    .end local v7    # "temp":Ljava/lang/String;
    :cond_3
    const-string v8, "Logerr"

    const-string v9, "trace is not exists"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
