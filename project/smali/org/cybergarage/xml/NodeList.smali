.class public Lorg/cybergarage/xml/NodeList;
.super Ljava/util/Vector;
.source "NodeList.java"


# instance fields
.field private mutex:Lorg/cybergarage/util/Mutex;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 89
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/NodeList;->mutex:Lorg/cybergarage/util/Mutex;

    .line 26
    return-void
.end method


# virtual methods
.method public getEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 64
    if-nez p1, :cond_0

    move-object v2, v4

    .line 85
    :goto_0
    return-object v2

    .line 67
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v1

    .line 68
    .local v1, "nLists":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 70
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 71
    .local v2, "node":Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_2

    .line 68
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "nodeName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 78
    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 80
    invoke-virtual {p0}, Lorg/cybergarage/xml/NodeList;->unlock()V

    goto :goto_0

    .end local v2    # "node":Lorg/cybergarage/xml/Node;
    .end local v3    # "nodeName":Ljava/lang/String;
    :cond_3
    move-object v2, v4

    .line 85
    goto :goto_0
.end method

.method public getNode(I)Lorg/cybergarage/xml/Node;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/NodeList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/xml/Node;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 41
    if-nez p1, :cond_0

    move-object v2, v4

    .line 59
    :goto_0
    return-object v2

    .line 44
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v1

    .line 45
    .local v1, "nLists":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 47
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 48
    .local v2, "node":Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_2

    .line 45
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "nodeName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .end local v2    # "node":Lorg/cybergarage/xml/Node;
    .end local v3    # "nodeName":Ljava/lang/String;
    :cond_3
    move-object v2, v4

    .line 59
    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/cybergarage/xml/NodeList;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 94
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/cybergarage/xml/NodeList;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 99
    return-void
.end method
