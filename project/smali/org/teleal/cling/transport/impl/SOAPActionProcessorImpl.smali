.class public Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;
.super Ljava/lang/Object;
.source "SOAPActionProcessorImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/SOAPActionProcessor;


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/teleal/cling/transport/spi/SOAPActionProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createValue(Lorg/teleal/cling/model/meta/ActionArgument;Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;
    .locals 5
    .param p1, "arg"    # Lorg/teleal/cling/model/meta/ActionArgument;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    .prologue
    .line 580
    :try_start_0
    new-instance v1, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-direct {v1, p1, p2}, Lorg/teleal/cling/model/action/ActionArgumentValue;-><init>(Lorg/teleal/cling/model/meta/ActionArgument;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/teleal/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "ex":Lorg/teleal/cling/model/types/InvalidValueException;
    new-instance v1, Lorg/teleal/cling/model/action/ActionException;

    .line 583
    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

    .line 584
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wrong type or invalid value for \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/InvalidValueException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 582
    invoke-direct {v1, v2, v3, v0}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getMatchingNodes(Lorg/w3c/dom/NodeList;[Lorg/teleal/cling/model/meta/ActionArgument;)Ljava/util/List;
    .locals 9
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;
    .param p2, "args"    # [Lorg/teleal/cling/model/meta/ActionArgument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "[",
            "Lorg/teleal/cling/model/meta/ActionArgument;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    .prologue
    .line 552
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v6, p2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 558
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v3, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 569
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    array-length v6, p2

    if-ge v5, v6, :cond_4

    .line 570
    new-instance v5, Lorg/teleal/cling/model/action/ActionException;

    .line 571
    sget-object v6, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

    .line 572
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid number of input or output arguments in XML message, expected "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 570
    invoke-direct {v5, v6, v7}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v5

    .line 553
    .end local v2    # "i":I
    .end local v3    # "matches":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    :cond_0
    aget-object v0, p2, v5

    .line 554
    .local v0, "argument":Lorg/teleal/cling/model/meta/ActionArgument;
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/ActionArgument;->getAliases()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 553
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 560
    .end local v0    # "argument":Lorg/teleal/cling/model/meta/ActionArgument;
    .restart local v2    # "i":I
    .restart local v3    # "matches":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    :cond_1
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 562
    .local v1, "child":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 559
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 565
    :cond_3
    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 566
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 575
    .end local v1    # "child":Lorg/w3c/dom/Node;
    :cond_4
    return-object v3
.end method

.method protected getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 521
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 521
    :goto_0
    return-object v0

    .line 523
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public readActionInputArguments(Lorg/w3c/dom/Element;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 2
    .param p1, "actionRequestElement"    # Lorg/w3c/dom/Element;
    .param p2, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    .prologue
    .line 371
    .line 373
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 374
    invoke-virtual {p2}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Action;->getInputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v1

    .line 372
    invoke-virtual {p0, v0, v1}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->readArgumentValues(Lorg/w3c/dom/NodeList;[Lorg/teleal/cling/model/meta/ActionArgument;)[Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v0

    .line 371
    invoke-virtual {p2, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput([Lorg/teleal/cling/model/action/ActionArgumentValue;)V

    .line 377
    return-void
.end method

.method protected readActionOutputArguments(Lorg/w3c/dom/Element;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 2
    .param p1, "actionResponseElement"    # Lorg/w3c/dom/Element;
    .param p2, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    .prologue
    .line 395
    .line 397
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 398
    invoke-virtual {p2}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Action;->getOutputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v1

    .line 396
    invoke-virtual {p0, v0, v1}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->readArgumentValues(Lorg/w3c/dom/NodeList;[Lorg/teleal/cling/model/meta/ActionArgument;)[Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v0

    .line 395
    invoke-virtual {p2, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->setOutput([Lorg/teleal/cling/model/action/ActionArgumentValue;)V

    .line 401
    return-void
.end method

.method protected readActionRequestElement(Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)Lorg/w3c/dom/Element;
    .locals 6
    .param p1, "bodyElement"    # Lorg/w3c/dom/Element;
    .param p2, "message"    # Lorg/teleal/cling/model/message/control/ActionRequestMessage;
    .param p3, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 301
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 303
    .local v1, "bodyChildren":Lorg/w3c/dom/NodeList;
    sget-object v3, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Looking for action request element matching namespace:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/teleal/cling/model/message/control/ActionRequestMessage;->getActionNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 305
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 317
    sget-object v3, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not read action request element matching namespace: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/teleal/cling/model/message/control/ActionRequestMessage;->getActionNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 306
    :cond_0
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 308
    .local v0, "bodyChild":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 305
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lorg/teleal/cling/model/message/control/ActionRequestMessage;->getActionNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    sget-object v3, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Reading action request element: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 314
    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_1
.end method

.method protected readActionResponseElement(Lorg/w3c/dom/Element;Lorg/teleal/cling/model/action/ActionInvocation;)Lorg/w3c/dom/Element;
    .locals 6
    .param p1, "bodyElement"    # Lorg/w3c/dom/Element;
    .param p2, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 339
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 341
    .local v1, "bodyChildren":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 352
    sget-object v3, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v4, "Could not read action response element"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 353
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 342
    :cond_0
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 344
    .local v0, "bodyChild":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 341
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    :cond_2
    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Response"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    sget-object v3, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Reading action response element: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 349
    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_1
.end method

.method protected readArgumentValues(Lorg/w3c/dom/NodeList;[Lorg/teleal/cling/model/meta/ActionArgument;)[Lorg/teleal/cling/model/action/ActionArgumentValue;
    .locals 11
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;
    .param p2, "args"    # [Lorg/teleal/cling/model/meta/ActionArgument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->getMatchingNodes(Lorg/w3c/dom/NodeList;[Lorg/teleal/cling/model/meta/ActionArgument;)Ljava/util/List;

    move-result-object v4

    .line 531
    .local v4, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    array-length v7, p2

    new-array v6, v7, [Lorg/teleal/cling/model/action/ActionArgumentValue;

    .line 533
    .local v6, "values":[Lorg/teleal/cling/model/action/ActionArgumentValue;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p2

    if-lt v1, v7, :cond_0

    .line 547
    return-object v6

    .line 534
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 535
    .local v2, "node":Lorg/w3c/dom/Node;
    aget-object v0, p2, v1

    .line 536
    .local v0, "arg":Lorg/teleal/cling/model/meta/ActionArgument;
    invoke-virtual {p0, v2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, "nodeName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/teleal/cling/model/meta/ActionArgument;->isNameOrAlias(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 538
    new-instance v7, Lorg/teleal/cling/model/action/ActionException;

    .line 539
    sget-object v8, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

    .line 540
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Wrong order of arguments, expected \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' not: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 538
    invoke-direct {v7, v8, v9}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v7

    .line 543
    :cond_1
    sget-object v7, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Reading action argument: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 544
    invoke-static {v2}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 545
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {p0, v0, v5}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->createValue(Lorg/teleal/cling/model/meta/ActionArgument;Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v7

    aput-object v7, v6, v1

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readBody(Lorg/teleal/cling/model/message/control/ActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 8
    .param p1, "requestMessage"    # Lorg/teleal/cling/model/message/control/ActionRequestMessage;
    .param p2, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/UnsupportedDataException;
        }
    .end annotation

    .prologue
    .line 112
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Reading body of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 113
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "===================================== SOAP BODY BEGIN ============================================"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 115
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lorg/teleal/cling/model/message/control/ActionRequestMessage;->getBody()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 116
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "-===================================== SOAP BODY END ============================================"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-interface {p1}, Lorg/teleal/cling/model/message/control/ActionRequestMessage;->getBody()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 120
    invoke-interface {p1}, Lorg/teleal/cling/model/message/control/ActionRequestMessage;->getBodyType()Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    move-result-object v4

    sget-object v5, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v4, v5}, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    invoke-interface {p1}, Lorg/teleal/cling/model/message/control/ActionRequestMessage;->getBodyString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 122
    :cond_1
    new-instance v4, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t transform empty or non-string body of: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 127
    :cond_2
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 128
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 130
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 131
    new-instance v5, Lorg/xml/sax/InputSource;

    .line 133
    new-instance v6, Ljava/io/StringReader;

    invoke-interface {p1}, Lorg/teleal/cling/model/message/control/ActionRequestMessage;->getBodyString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-direct {v5, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 130
    invoke-virtual {v4, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 137
    .local v1, "d":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->readBodyElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 139
    .local v0, "bodyElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v1, v0, p1, p2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->readBodyRequest(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-void

    .line 141
    .end local v0    # "bodyElement":Lorg/w3c/dom/Element;
    .end local v1    # "d":Lorg/w3c/dom/Document;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v2

    .line 142
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v4, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t transform message payload: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public readBody(Lorg/teleal/cling/model/message/control/ActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 8
    .param p1, "responseMsg"    # Lorg/teleal/cling/model/message/control/ActionResponseMessage;
    .param p2, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/UnsupportedDataException;
        }
    .end annotation

    .prologue
    .line 148
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Reading body of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 149
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "===================================== SOAP BODY BEGIN ============================================"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 151
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lorg/teleal/cling/model/message/control/ActionResponseMessage;->getBodyString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 152
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "-===================================== SOAP BODY END ============================================"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 155
    :cond_0
    invoke-interface {p1}, Lorg/teleal/cling/model/message/control/ActionResponseMessage;->getBody()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 156
    invoke-interface {p1}, Lorg/teleal/cling/model/message/control/ActionResponseMessage;->getBodyType()Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    move-result-object v4

    sget-object v5, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v4, v5}, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    invoke-interface {p1}, Lorg/teleal/cling/model/message/control/ActionResponseMessage;->getBodyString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 158
    :cond_1
    new-instance v4, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t transform empty or non-string body of: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 163
    :cond_2
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 164
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 166
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 167
    new-instance v5, Lorg/xml/sax/InputSource;

    .line 169
    new-instance v6, Ljava/io/StringReader;

    invoke-interface {p1}, Lorg/teleal/cling/model/message/control/ActionResponseMessage;->getBodyString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-direct {v5, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 166
    invoke-virtual {v4, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 173
    .local v1, "d":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->readBodyElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 175
    .local v0, "bodyElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v1, v0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->readBodyFailure(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lorg/teleal/cling/model/action/ActionException;

    move-result-object v2

    .line 177
    .local v2, "ex":Lorg/teleal/cling/model/action/ActionException;
    if-nez v2, :cond_3

    .line 178
    invoke-virtual {p0, v1, v0, p1, p2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->readBodyResponse(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 186
    :goto_0
    return-void

    .line 180
    :cond_3
    invoke-virtual {p2, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setFailure(Lorg/teleal/cling/model/action/ActionException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v0    # "bodyElement":Lorg/w3c/dom/Element;
    .end local v1    # "d":Lorg/w3c/dom/Document;
    .end local v2    # "ex":Lorg/teleal/cling/model/action/ActionException;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v2

    .line 184
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v4, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t transform message payload: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected readBodyElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 6
    .param p1, "d"    # Lorg/w3c/dom/Document;

    .prologue
    .line 260
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 261
    .local v1, "envelopeElement":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Envelope"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 262
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Response root element was not \'Envelope\'"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 265
    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 266
    .local v2, "envelopeElementChildren":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 277
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Response envelope did not contain \'Body\' child element"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 267
    :cond_2
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 269
    .local v0, "envelopeChild":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 266
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    :cond_4
    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Body"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 273
    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0    # "envelopeChild":Lorg/w3c/dom/Node;
    return-object v0
.end method

.method protected readBodyFailure(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lorg/teleal/cling/model/action/ActionException;
    .locals 1
    .param p1, "d"    # Lorg/w3c/dom/Document;
    .param p2, "bodyElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0, p2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->readFaultElement(Lorg/w3c/dom/Element;)Lorg/teleal/cling/model/action/ActionException;

    move-result-object v0

    return-object v0
.end method

.method protected readBodyRequest(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 1
    .param p1, "d"    # Lorg/w3c/dom/Document;
    .param p2, "bodyElement"    # Lorg/w3c/dom/Element;
    .param p3, "message"    # Lorg/teleal/cling/model/message/control/ActionRequestMessage;
    .param p4, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0, p2, p3, p4}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->readActionRequestElement(Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 230
    .local v0, "actionRequestElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v0, p4}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->readActionInputArguments(Lorg/w3c/dom/Element;Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 231
    return-void
.end method

.method protected readBodyResponse(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 1
    .param p1, "d"    # Lorg/w3c/dom/Document;
    .param p2, "bodyElement"    # Lorg/w3c/dom/Element;
    .param p3, "message"    # Lorg/teleal/cling/model/message/control/ActionResponseMessage;
    .param p4, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0, p2, p4}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->readActionResponseElement(Lorg/w3c/dom/Element;Lorg/teleal/cling/model/action/ActionInvocation;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 239
    .local v0, "actionResponse":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v0, p4}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->readActionOutputArguments(Lorg/w3c/dom/Element;Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 240
    return-void
.end method

.method protected readFaultElement(Lorg/w3c/dom/Element;)Lorg/teleal/cling/model/action/ActionException;
    .locals 24
    .param p1, "bodyElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 432
    const/16 v17, 0x0

    .line 433
    .local v17, "receivedFaultElement":Z
    const/4 v9, 0x0

    .line 434
    .local v9, "errorCode":Ljava/lang/String;
    const/4 v10, 0x0

    .line 436
    .local v10, "errorDescription":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 438
    .local v4, "bodyChildren":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v21

    if-lt v14, v0, :cond_0

    .line 487
    if-eqz v9, :cond_b

    .line 489
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 490
    .local v16, "numericCode":I
    invoke-static/range {v16 .. v16}, Lorg/teleal/cling/model/types/ErrorCode;->getByCode(I)Lorg/teleal/cling/model/types/ErrorCode;

    move-result-object v18

    .line 491
    .local v18, "standardErrorCode":Lorg/teleal/cling/model/types/ErrorCode;
    if-eqz v18, :cond_a

    .line 492
    sget-object v21, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Reading fault element: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lorg/teleal/cling/model/types/ErrorCode;->getCode()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 493
    new-instance v21, Lorg/teleal/cling/model/action/ActionException;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-direct {v0, v1, v10, v2}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    .end local v16    # "numericCode":I
    .end local v18    # "standardErrorCode":Lorg/teleal/cling/model/types/ErrorCode;
    :goto_1
    return-object v21

    .line 439
    :cond_0
    invoke-interface {v4, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 441
    .local v3, "bodyChild":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 438
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 444
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "Fault"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 446
    const/16 v17, 0x1

    .line 448
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 450
    .local v13, "faultChildren":Lorg/w3c/dom/NodeList;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v21

    if-ge v15, v0, :cond_1

    .line 451
    invoke-interface {v13, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 453
    .local v12, "faultChild":Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 450
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 456
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "detail"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 458
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 459
    .local v6, "detailChildren":Lorg/w3c/dom/NodeList;
    const/16 v19, 0x0

    .local v19, "x":I
    :goto_3
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 460
    move/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 462
    .local v5, "detailChild":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 459
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 465
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "UPnPError"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 467
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 468
    .local v8, "errorChildren":Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    .local v20, "y":I
    :goto_4
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 469
    move/from16 v0, v20

    invoke-interface {v8, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 471
    .local v7, "errorChild":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 468
    :cond_7
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 474
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "errorCode"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 475
    invoke-static {v7}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    .line 477
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->getUnprefixedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "errorDescription"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 478
    invoke-static {v7}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 495
    .end local v3    # "bodyChild":Lorg/w3c/dom/Node;
    .end local v5    # "detailChild":Lorg/w3c/dom/Node;
    .end local v6    # "detailChildren":Lorg/w3c/dom/NodeList;
    .end local v7    # "errorChild":Lorg/w3c/dom/Node;
    .end local v8    # "errorChildren":Lorg/w3c/dom/NodeList;
    .end local v12    # "faultChild":Lorg/w3c/dom/Node;
    .end local v13    # "faultChildren":Lorg/w3c/dom/NodeList;
    .end local v15    # "j":I
    .end local v19    # "x":I
    .end local v20    # "y":I
    .restart local v16    # "numericCode":I
    .restart local v18    # "standardErrorCode":Lorg/teleal/cling/model/types/ErrorCode;
    :cond_a
    :try_start_1
    sget-object v21, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Reading fault element: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 496
    new-instance v21, Lorg/teleal/cling/model/action/ActionException;

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-direct {v0, v1, v10}, Lorg/teleal/cling/model/action/ActionException;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 498
    .end local v16    # "numericCode":I
    .end local v18    # "standardErrorCode":Lorg/teleal/cling/model/types/ErrorCode;
    :catch_0
    move-exception v11

    .line 499
    .local v11, "ex":Ljava/lang/NumberFormatException;
    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "Error code was not a number"

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 501
    .end local v11    # "ex":Ljava/lang/NumberFormatException;
    :cond_b
    if-eqz v17, :cond_c

    .line 502
    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "Received fault element but no error code"

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 504
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_1
.end method

.method protected toString(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 3
    .param p1, "d"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 512
    invoke-static {p1}, Lorg/teleal/cling/model/XMLUtil;->documentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "output":Ljava/lang/String;
    :goto_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 517
    return-object v0

    .line 514
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected writeActionInputArguments(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 8
    .param p1, "d"    # Lorg/w3c/dom/Document;
    .param p2, "actionRequestElement"    # Lorg/w3c/dom/Element;
    .param p3, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 362
    invoke-virtual {p3}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/Action;->getInputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 367
    return-void

    .line 362
    :cond_0
    aget-object v0, v3, v2

    .line 363
    .local v0, "argument":Lorg/teleal/cling/model/meta/ActionArgument;
    sget-object v5, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Writing action input argument: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p3, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->getInput(Lorg/teleal/cling/model/meta/ActionArgument;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p3, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->getInput(Lorg/teleal/cling/model/meta/ActionArgument;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p2, v5, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method protected writeActionOutputArguments(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 8
    .param p1, "d"    # Lorg/w3c/dom/Document;
    .param p2, "actionResponseElement"    # Lorg/w3c/dom/Element;
    .param p3, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 385
    invoke-virtual {p3}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/Action;->getOutputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 390
    return-void

    .line 385
    :cond_0
    aget-object v0, v3, v2

    .line 386
    .local v0, "argument":Lorg/teleal/cling/model/meta/ActionArgument;
    sget-object v5, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Writing action output argument: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p3, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Lorg/teleal/cling/model/meta/ActionArgument;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p3, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Lorg/teleal/cling/model/meta/ActionArgument;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p2, v5, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method protected writeActionRequestElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)Lorg/w3c/dom/Element;
    .locals 4
    .param p1, "d"    # Lorg/w3c/dom/Document;
    .param p2, "bodyElement"    # Lorg/w3c/dom/Element;
    .param p3, "message"    # Lorg/teleal/cling/model/message/control/ActionRequestMessage;
    .param p4, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 287
    sget-object v1, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Writing action request element: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 290
    invoke-interface {p3}, Lorg/teleal/cling/model/message/control/ActionRequestMessage;->getActionNamespace()Ljava/lang/String;

    move-result-object v1

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "u:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 293
    .local v0, "actionRequestElement":Lorg/w3c/dom/Element;
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 295
    return-object v0
.end method

.method protected writeActionResponseElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)Lorg/w3c/dom/Element;
    .locals 4
    .param p1, "d"    # Lorg/w3c/dom/Document;
    .param p2, "bodyElement"    # Lorg/w3c/dom/Element;
    .param p3, "message"    # Lorg/teleal/cling/model/message/control/ActionResponseMessage;
    .param p4, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 328
    sget-object v1, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Writing action response element: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 330
    invoke-interface {p3}, Lorg/teleal/cling/model/message/control/ActionResponseMessage;->getActionNamespace()Ljava/lang/String;

    move-result-object v1

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "u:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Response"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 333
    .local v0, "actionResponseElement":Lorg/w3c/dom/Element;
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 335
    return-object v0
.end method

.method public writeBody(Lorg/teleal/cling/model/message/control/ActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 7
    .param p1, "requestMessage"    # Lorg/teleal/cling/model/message/control/ActionRequestMessage;
    .param p2, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/UnsupportedDataException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Writing body of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 63
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 64
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 65
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 66
    .local v1, "d":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->writeBodyElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 68
    .local v0, "body":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v1, v0, p1, p2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->writeBodyRequest(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 70
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "===================================== SOAP BODY BEGIN ============================================"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 72
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lorg/teleal/cling/model/message/control/ActionRequestMessage;->getBody()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 73
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "-===================================== SOAP BODY END ============================================"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    return-void

    .line 76
    .end local v0    # "body":Lorg/w3c/dom/Element;
    .end local v1    # "d":Lorg/w3c/dom/Document;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v4, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t transform message payload: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public writeBody(Lorg/teleal/cling/model/message/control/ActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 7
    .param p1, "responseMessage"    # Lorg/teleal/cling/model/message/control/ActionResponseMessage;
    .param p2, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/UnsupportedDataException;
        }
    .end annotation

    .prologue
    .line 84
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Writing body of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 88
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 89
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 90
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 91
    .local v1, "d":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->writeBodyElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 93
    .local v0, "body":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lorg/teleal/cling/model/action/ActionInvocation;->getFailure()Lorg/teleal/cling/model/action/ActionException;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 94
    invoke-virtual {p0, v1, v0, p1, p2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->writeBodyFailure(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 99
    :goto_0
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "===================================== SOAP BODY BEGIN ============================================"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 101
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lorg/teleal/cling/model/message/control/ActionResponseMessage;->getBody()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 102
    sget-object v4, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "-===================================== SOAP BODY END ============================================"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0, v1, v0, p1, p2}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->writeBodyResponse(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v0    # "body":Lorg/w3c/dom/Element;
    .end local v1    # "d":Lorg/w3c/dom/Document;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v2

    .line 106
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v4, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t transform message payload: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected writeBodyElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "d"    # Lorg/w3c/dom/Document;

    .prologue
    .line 246
    const-string v3, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v4, "s:Envelope"

    invoke-interface {p1, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 247
    .local v2, "envelopeElement":Lorg/w3c/dom/Element;
    const-string v3, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v4, "s:encodingStyle"

    invoke-interface {p1, v3, v4}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    .line 248
    .local v1, "encodingStyleAttr":Lorg/w3c/dom/Attr;
    const-string v3, "http://schemas.xmlsoap.org/soap/encoding/"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 249
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 250
    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 252
    const-string v3, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v4, "s:Body"

    invoke-interface {p1, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 253
    .local v0, "bodyElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 255
    return-object v0
.end method

.method protected writeBodyFailure(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 2
    .param p1, "d"    # Lorg/w3c/dom/Document;
    .param p2, "bodyElement"    # Lorg/w3c/dom/Element;
    .param p3, "message"    # Lorg/teleal/cling/model/message/control/ActionResponseMessage;
    .param p4, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0, p1, p2, p4}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->writeFaultElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 196
    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->toString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lorg/teleal/cling/model/message/control/ActionResponseMessage;->setBody(Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method protected writeBodyRequest(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 3
    .param p1, "d"    # Lorg/w3c/dom/Document;
    .param p2, "bodyElement"    # Lorg/w3c/dom/Element;
    .param p3, "message"    # Lorg/teleal/cling/model/message/control/ActionRequestMessage;
    .param p4, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->writeActionRequestElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 205
    .local v0, "actionRequestElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0, p1, v0, p4}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->writeActionInputArguments(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 206
    sget-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->toString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lorg/teleal/cling/model/message/control/ActionRequestMessage;->setBody(Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method protected writeBodyResponse(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 3
    .param p1, "d"    # Lorg/w3c/dom/Document;
    .param p2, "bodyElement"    # Lorg/w3c/dom/Element;
    .param p3, "message"    # Lorg/teleal/cling/model/message/control/ActionResponseMessage;
    .param p4, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->writeActionResponseElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/message/control/ActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 216
    .local v0, "actionResponseElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0, p1, v0, p4}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->writeActionOutputArguments(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 217
    sget-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->toString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lorg/teleal/cling/model/message/control/ActionResponseMessage;->setBody(Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method protected writeFaultElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 8
    .param p1, "d"    # Lorg/w3c/dom/Document;
    .param p2, "bodyElement"    # Lorg/w3c/dom/Element;
    .param p3, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 407
    const-string v5, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v6, "s:Fault"

    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 408
    .local v3, "faultElement":Lorg/w3c/dom/Element;
    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 411
    const-string v5, "faultcode"

    const-string v6, "s:Client"

    invoke-static {p1, v3, v5, v6}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 412
    const-string v5, "faultstring"

    const-string v6, "UPnPError"

    invoke-static {p1, v3, v5, v6}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 414
    const-string v5, "detail"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 415
    .local v0, "detailElement":Lorg/w3c/dom/Element;
    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 417
    const-string v5, "urn:schemas-upnp-org:control-1-0"

    const-string v6, "UPnPError"

    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 418
    .local v4, "upnpErrorElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 420
    invoke-virtual {p3}, Lorg/teleal/cling/model/action/ActionInvocation;->getFailure()Lorg/teleal/cling/model/action/ActionException;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/action/ActionException;->getErrorCode()I

    move-result v1

    .line 421
    .local v1, "errorCode":I
    invoke-virtual {p3}, Lorg/teleal/cling/model/action/ActionInvocation;->getFailure()Lorg/teleal/cling/model/action/ActionException;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/action/ActionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "errorDescription":Ljava/lang/String;
    sget-object v5, Lorg/teleal/cling/transport/impl/SOAPActionProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Writing fault element: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 425
    const-string v5, "errorCode"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 426
    const-string v5, "errorDescription"

    invoke-static {p1, v4, v5, v2}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 428
    return-void
.end method
