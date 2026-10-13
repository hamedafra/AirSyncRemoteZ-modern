.class public Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
.super Ljava/lang/Object;
.source "ArgumentValue.java"


# instance fields
.field protected mKey:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field protected mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mKey:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mValue:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mType:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mKey:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mValue:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mType:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mKey:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mValue:Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method public debugInfor()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v0, "ArgumentValue is null"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mType:Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getVaule()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mKey:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mType:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->mValue:Ljava/lang/Object;

    .line 72
    return-void
.end method
