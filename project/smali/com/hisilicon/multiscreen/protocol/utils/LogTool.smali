.class public Lcom/hisilicon/multiscreen/protocol/utils/LogTool;
.super Ljava/lang/Object;
.source "LogTool.java"


# static fields
.field public static final MSG_EMPTY:Ljava/lang/String; = "Empty Msg"

.field public static final MSG_SEPARATOR:Ljava/lang/String; = " ---- "

.field public static final STACK_LEVEL:I = 0x5

.field public static final TAG_PREFIX:Ljava/lang/String; = "[Hisilicon]"

.field public static mDFlag:Z

.field public static mEFlag:Z

.field public static mIFlag:Z

.field public static mVFlag:Z

.field public static mWFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 39
    sput-boolean v0, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->mVFlag:Z

    .line 45
    sput-boolean v0, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->mDFlag:Z

    .line 51
    sput-boolean v0, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->mIFlag:Z

    .line 57
    sput-boolean v0, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->mWFlag:Z

    .line 63
    sput-boolean v0, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->mEFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "pMsg"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-boolean v0, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->mDFlag:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->getFinalTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->getFinalMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "pMsg"    # Ljava/lang/String;

    .prologue
    .line 129
    sget-boolean v0, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->mWFlag:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->getFinalTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->getFinalMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    return-void
.end method

.method private static getClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFinalMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pMsg"    # Ljava/lang/String;

    .prologue
    .line 137
    if-eqz p0, :cond_0

    const-string v0, ""

    if-ne p0, v0, :cond_1

    .line 139
    :cond_0
    const-string p0, "Empty Msg"

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->getLineNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ---- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ---- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFinalTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Hisilicon]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLineNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMethodName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .param p0, "pMsg"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-boolean v0, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->mIFlag:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->getFinalTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->getFinalMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .param p0, "pMsg"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-boolean v0, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->mVFlag:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->getFinalTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->getFinalMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .param p0, "pMsg"    # Ljava/lang/String;

    .prologue
    .line 115
    sget-boolean v0, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->mEFlag:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->getFinalTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->getFinalMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    return-void
.end method
