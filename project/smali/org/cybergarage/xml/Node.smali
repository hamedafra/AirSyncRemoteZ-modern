.class public Lorg/cybergarage/xml/Node;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field private attrList:Lorg/cybergarage/xml/AttributeList;

.field private mutex:Lorg/cybergarage/util/Mutex;

.field private name:Ljava/lang/String;

.field private nodeList:Lorg/cybergarage/xml/NodeList;

.field private parentNode:Lorg/cybergarage/xml/Node;

.field private userData:Ljava/lang/Object;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v1, p0, Lorg/cybergarage/xml/Node;->parentNode:Lorg/cybergarage/xml/Node;

    .line 101
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->name:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    .line 158
    new-instance v0, Lorg/cybergarage/xml/AttributeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/AttributeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    .line 248
    new-instance v0, Lorg/cybergarage/xml/NodeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/NodeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    .line 337
    iput-object v1, p0, Lorg/cybergarage/xml/Node;->userData:Ljava/lang/Object;

    .line 473
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->mutex:Lorg/cybergarage/util/Mutex;

    .line 50
    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/Node;->setParentNode(Lorg/cybergarage/xml/Node;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 63
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Lorg/cybergarage/xml/Attribute;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v0, "attr":Lorg/cybergarage/xml/Attribute;
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->addAttribute(Lorg/cybergarage/xml/Attribute;)V

    .line 184
    return-void
.end method

.method public addAttribute(Lorg/cybergarage/xml/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/cybergarage/xml/Attribute;

    .prologue
    .line 174
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method public addNode(Lorg/cybergarage/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 270
    invoke-virtual {p1, p0}, Lorg/cybergarage/xml/Node;->setParentNode(Lorg/cybergarage/xml/Node;)V

    .line 271
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method public addValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 142
    iput-object p1, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    if-eqz p1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAttribute(I)Lorg/cybergarage/xml/Attribute;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeIntegerValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 232
    :goto_0
    return v1

    .line 231
    :catch_0
    move-exception v1

    .line 232
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 221
    .local v0, "attr":Lorg/cybergarage/xml/Attribute;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 223
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getIndentLevelString(I)Ljava/lang/String;
    .locals 1
    .param p1, "nIndentLevel"    # I

    .prologue
    .line 360
    const-string v0, "   "

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/xml/Node;->getIndentLevelString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndentLevelString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "nIndentLevel"    # I
    .param p2, "space"    # Ljava/lang/String;

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/2addr v2, p1

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 373
    .local v0, "indentString":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 374
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 280
    const/4 v1, -0x1

    .line 281
    .local v1, "index":I
    iget-object v4, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v4}, Lorg/cybergarage/xml/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 282
    add-int/lit8 v1, v1, 0x1

    .line 283
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cybergarage/xml/Node;

    .line 284
    .local v3, "n":Lorg/cybergarage/xml/Node;
    invoke-virtual {v3}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    .line 287
    .end local v1    # "index":I
    .end local v3    # "n":Lorg/cybergarage/xml/Node;
    .local v2, "index":I
    :goto_0
    return v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_1
    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0
.end method

.method public getNAttributes()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/AttributeList;->size()I

    move-result v0

    return v0
.end method

.method public getNNodes()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNode(I)Lorg/cybergarage/xml/Node;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->getEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 328
    .local v0, "node":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 330
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getParentNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->parentNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getRootNode()Lorg/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "rootNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 90
    .local v0, "parentNode":Lorg/cybergarage/xml/Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 91
    move-object v1, v0

    .line 92
    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_0
    return-object v1
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNAttributes()I

    move-result v0

    if-lez v0, :cond_0

    .line 197
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNodes()Z
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v0

    if-lez v0, :cond_0

    .line 307
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertAttributeAt(Lorg/cybergarage/xml/Attribute;I)V
    .locals 1
    .param p1, "attr"    # Lorg/cybergarage/xml/Attribute;
    .param p2, "index"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1, p2}, Lorg/cybergarage/xml/AttributeList;->insertElementAt(Ljava/lang/Object;I)V

    .line 179
    return-void
.end method

.method public insertNode(Lorg/cybergarage/xml/Node;I)V
    .locals 1
    .param p1, "node"    # Lorg/cybergarage/xml/Node;
    .param p2, "index"    # I

    .prologue
    .line 275
    invoke-virtual {p1, p0}, Lorg/cybergarage/xml/Node;->setParentNode(Lorg/cybergarage/xml/Node;)V

    .line 276
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1, p2}, Lorg/cybergarage/xml/NodeList;->insertElementAt(Ljava/lang/Object;I)V

    .line 277
    return-void
.end method

.method public isName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 478
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/NodeList;->lock()V

    .line 479
    return-void
.end method

.method public output(Ljava/io/PrintWriter;IZ)V
    .locals 8
    .param p1, "ps"    # Ljava/io/PrintWriter;
    .param p2, "indentLevel"    # I
    .param p3, "hasChildNode"    # Z

    .prologue
    .line 390
    invoke-virtual {p0, p2}, Lorg/cybergarage/xml/Node;->getIndentLevelString(I)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "indentString":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez p3, :cond_3

    .line 396
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 399
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 401
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "></"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void

    .line 403
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lorg/cybergarage/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 411
    const-string v6, ">"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v3

    .line 414
    .local v3, "nChildNodes":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 415
    invoke-virtual {p0, v2}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 416
    .local v0, "cnode":Lorg/cybergarage/xml/Node;
    add-int/lit8 v6, p2, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, p1, v6, v7}, Lorg/cybergarage/xml/Node;->output(Ljava/io/PrintWriter;IZ)V

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 419
    .end local v0    # "cnode":Lorg/cybergarage/xml/Node;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public outputAttributes(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "ps"    # Ljava/io/PrintWriter;

    .prologue
    .line 381
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getNAttributes()I

    move-result v2

    .line 382
    .local v2, "nAttributes":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 383
    invoke-virtual {p0, v1}, Lorg/cybergarage/xml/Node;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 384
    .local v0, "attr":Lorg/cybergarage/xml/Attribute;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/cybergarage/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    .end local v0    # "attr":Lorg/cybergarage/xml/Attribute;
    :cond_0
    return-void
.end method

.method public print()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->print(Z)V

    .line 470
    return-void
.end method

.method public print(Z)V
    .locals 2
    .param p1, "hasChildNode"    # Z

    .prologue
    .line 462
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 463
    .local v0, "pr":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/cybergarage/xml/Node;->output(Ljava/io/PrintWriter;IZ)V

    .line 464
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 465
    return-void
.end method

.method public removeAllNodes()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/NodeList;->clear()V

    .line 302
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->removeAttribute(Lorg/cybergarage/xml/Attribute;)Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Lorg/cybergarage/xml/Attribute;)Z
    .locals 1
    .param p1, "attr"    # Lorg/cybergarage/xml/Attribute;

    .prologue
    .line 187
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->attrList:Lorg/cybergarage/xml/AttributeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/AttributeList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeNode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/NodeList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeNode(Lorg/cybergarage/xml/Node;)Z
    .locals 1
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/cybergarage/xml/Node;->setParentNode(Lorg/cybergarage/xml/Node;)V

    .line 292
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAttribute(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 216
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getAttribute(Ljava/lang/String;)Lorg/cybergarage/xml/Attribute;

    move-result-object v0

    .line 207
    .local v0, "attr":Lorg/cybergarage/xml/Attribute;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p2}, Lorg/cybergarage/xml/Attribute;->setValue(Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v0, Lorg/cybergarage/xml/Attribute;

    .end local v0    # "attr":Lorg/cybergarage/xml/Attribute;
    invoke-direct {v0, p1, p2}, Lorg/cybergarage/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .restart local v0    # "attr":Lorg/cybergarage/xml/Attribute;
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->addAttribute(Lorg/cybergarage/xml/Attribute;)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/cybergarage/xml/Node;->name:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/xml/Node;->name:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setNameSpace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public setNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 317
    .local v0, "node":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0, p2}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 321
    :cond_0
    new-instance v0, Lorg/cybergarage/xml/Node;

    .end local v0    # "node":Lorg/cybergarage/xml/Node;
    invoke-direct {v0, p1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 322
    .restart local v0    # "node":Lorg/cybergarage/xml/Node;
    invoke-virtual {v0, p2}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public setParentNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/cybergarage/xml/Node;->parentNode:Lorg/cybergarage/xml/Node;

    .line 75
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 341
    iput-object p1, p0, Lorg/cybergarage/xml/Node;->userData:Ljava/lang/Object;

    .line 342
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lorg/cybergarage/xml/Node;->value:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 439
    const-string v0, "utf-8"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/xml/Node;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "enc"    # Ljava/lang/String;
    .param p2, "hasChildNode"    # Z

    .prologue
    .line 424
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 425
    .local v0, "byteOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 426
    .local v1, "pr":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p2}, Lorg/cybergarage/xml/Node;->output(Ljava/io/PrintWriter;IZ)V

    .line 427
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 429
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 430
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 434
    :goto_0
    return-object v2

    .line 432
    :catch_0
    move-exception v2

    .line 434
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public toXMLString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/xml/Node;->toXMLString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXMLString(Z)Ljava/lang/String;
    .locals 3
    .param p1, "hasChildNode"    # Z

    .prologue
    .line 444
    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "xmlStr":Ljava/lang/String;
    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    const-string v1, "&"

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    return-object v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->nodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/NodeList;->unlock()V

    .line 484
    iget-object v0, p0, Lorg/cybergarage/xml/Node;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 485
    return-void
.end method
