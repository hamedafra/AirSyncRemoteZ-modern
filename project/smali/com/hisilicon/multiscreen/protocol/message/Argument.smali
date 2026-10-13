.class public Lcom/hisilicon/multiscreen/protocol/message/Argument;
.super Ljava/lang/Object;
.source "Argument.java"


# instance fields
.field private mValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;",
            ">;"
        }
    .end annotation
.end field

.field private mValueNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueNum:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueList:Ljava/util/ArrayList;

    .line 31
    return-void
.end method


# virtual methods
.method public addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V
    .locals 1
    .param p1, "value"    # Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueList:Ljava/util/ArrayList;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public countArgumentValueNum()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getArgumentValue(I)Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    goto :goto_0
.end method

.method public getArgumentValueList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getArgumentValueNum()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueNum:I

    return v0
.end method

.method public removeArgumentValue(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 92
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)Z
    .locals 2
    .param p1, "argumentValue"    # Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 118
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setArgumentValueNum(I)V
    .locals 0
    .param p1, "valueNum"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/Argument;->mValueNum:I

    .line 42
    return-void
.end method
