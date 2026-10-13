.class public Lorg/cybergarage/upnp/ArgumentList;
.super Ljava/util/Vector;
.source "ArgumentList.java"


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "argumentList"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public getArgument(I)Lorg/cybergarage/upnp/Argument;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ArgumentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Argument;

    return-object v0
.end method

.method public getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v3

    .line 48
    .local v3, "nArgs":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 49
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    .line 50
    .local v0, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "argName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 56
    .end local v0    # "arg":Lorg/cybergarage/upnp/Argument;
    .end local v1    # "argName":Ljava/lang/String;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public set(Lorg/cybergarage/upnp/ArgumentList;)V
    .locals 6
    .param p1, "inArgList"    # Lorg/cybergarage/upnp/ArgumentList;

    .prologue
    .line 67
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v4

    .line 68
    .local v4, "nInArgs":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 69
    invoke-virtual {p1, v3}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v1

    .line 70
    .local v1, "inArg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "inArgName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    .line 72
    .local v0, "arg":Lorg/cybergarage/upnp/Argument;
    if-nez v0, :cond_0

    .line 68
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v0    # "arg":Lorg/cybergarage/upnp/Argument;
    .end local v1    # "inArg":Lorg/cybergarage/upnp/Argument;
    .end local v2    # "inArgName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setReqArgs(Lorg/cybergarage/upnp/ArgumentList;)V
    .locals 8
    .param p1, "inArgList"    # Lorg/cybergarage/upnp/ArgumentList;

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v4

    .line 87
    .local v4, "nArgs":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 88
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    .line 89
    .local v0, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->isInDirection()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "argName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    .line 92
    .local v2, "inArg":Lorg/cybergarage/upnp/Argument;
    if-nez v2, :cond_0

    .line 93
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Argument \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" missing."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 94
    :cond_0
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 87
    .end local v1    # "argName":Ljava/lang/String;
    .end local v2    # "inArg":Lorg/cybergarage/upnp/Argument;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "arg":Lorg/cybergarage/upnp/Argument;
    :cond_2
    return-void
.end method

.method public setResArgs(Lorg/cybergarage/upnp/ArgumentList;)V
    .locals 8
    .param p1, "outArgList"    # Lorg/cybergarage/upnp/ArgumentList;

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v3

    .line 107
    .local v3, "nArgs":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 108
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    .line 109
    .local v0, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->isOutDirection()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "argName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v4

    .line 112
    .local v4, "outArg":Lorg/cybergarage/upnp/Argument;
    if-nez v4, :cond_0

    .line 113
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Argument \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" missing."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 114
    :cond_0
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 107
    .end local v1    # "argName":Ljava/lang/String;
    .end local v4    # "outArg":Lorg/cybergarage/upnp/Argument;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "arg":Lorg/cybergarage/upnp/Argument;
    :cond_2
    return-void
.end method
