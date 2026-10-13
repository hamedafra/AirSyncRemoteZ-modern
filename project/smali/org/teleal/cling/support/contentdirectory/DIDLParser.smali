.class public Lorg/teleal/cling/support/contentdirectory/DIDLParser;
.super Lorg/teleal/common/xml/SAXParser;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;,
        Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;,
        Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;,
        Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;,
        Lorg/teleal/cling/support/contentdirectory/DIDLParser$ResHandler;,
        Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/teleal/common/xml/SAXParser;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected appendClass(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "descriptor"    # Lorg/w3c/dom/Document;
    .param p2, "parent"    # Lorg/w3c/dom/Element;
    .param p3, "clazz"    # Lorg/teleal/cling/support/model/DIDLObject$Class;
    .param p4, "element"    # Ljava/lang/String;
    .param p5, "appendDerivation"    # Z

    .prologue
    .line 588
    .line 591
    invoke-virtual {p3}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 592
    const-string v2, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    .line 587
    invoke-static {p1, p2, p4, v1, v2}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 594
    .local v0, "classElement":Lorg/w3c/dom/Element;
    invoke-virtual {p3}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 595
    const-string v1, "name"

    invoke-virtual {p3}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_0
    if-eqz p5, :cond_1

    .line 597
    const-string v1, "includeDerived"

    invoke-virtual {p3}, Lorg/teleal/cling/support/model/DIDLObject$Class;->isIncludeDerived()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_1
    return-void
.end method

.method protected appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 7
    .param p1, "descriptor"    # Lorg/w3c/dom/Document;
    .param p2, "parent"    # Lorg/w3c/dom/Element;
    .param p3, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p6, "namespaceURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Lorg/w3c/dom/Element;",
            "Lorg/teleal/cling/support/model/DIDLObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/model/DIDLObject$Property$NAMESPACE;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 579
    .local p5, "namespace":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/support/model/DIDLObject$Property$NAMESPACE;>;"
    invoke-virtual {p3, p5}, Lorg/teleal/cling/support/model/DIDLObject;->getPropertiesByNamespace(Ljava/lang/Class;)[Lorg/teleal/cling/support/model/DIDLObject$Property;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 584
    return-void

    .line 579
    :cond_0
    aget-object v1, v3, v2

    .line 580
    .local v1, "property":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<Ljava/lang/Object;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, p6, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 581
    .local v0, "el":Lorg/w3c/dom/Element;
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 582
    invoke-virtual {v1, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;->setOnElement(Lorg/w3c/dom/Element;)V

    .line 579
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected buildDOM(Lorg/teleal/cling/support/model/DIDLContent;Z)Lorg/w3c/dom/Document;
    .locals 3
    .param p1, "content"    # Lorg/teleal/cling/support/model/DIDLContent;
    .param p2, "nestedItems"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 318
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 319
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 321
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 323
    .local v0, "d":Lorg/w3c/dom/Document;
    invoke-virtual {p0, p1, v0, p2}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->generateRoot(Lorg/teleal/cling/support/model/DIDLContent;Lorg/w3c/dom/Document;Z)V

    .line 325
    return-object v0
.end method

.method protected createContainer(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/container/Container;
    .locals 4
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 144
    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/container/Container;-><init>()V

    .line 146
    .local v0, "container":Lorg/teleal/cling/support/model/container/Container;
    const-string v2, "id"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/container/Container;->setId(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 147
    const-string v2, "parentID"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/container/Container;->setParentID(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 149
    const-string v2, "childCount"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 150
    const-string v2, "childCount"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 153
    :cond_0
    :try_start_0
    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v2}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v2

    .line 154
    const-string v3, "restricted"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-interface {v2, v3}, Lorg/teleal/cling/model/types/Datatype;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 156
    .local v1, "value":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/container/Container;->setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;

    .line 159
    :cond_1
    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v2}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v2

    .line 160
    const-string v3, "searchable"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-interface {v2, v3}, Lorg/teleal/cling/model/types/Datatype;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "value":Ljava/lang/Boolean;
    check-cast v1, Ljava/lang/Boolean;

    .line 162
    .restart local v1    # "value":Ljava/lang/Boolean;
    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/container/Container;->setSearchable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1    # "value":Ljava/lang/Boolean;
    :cond_2
    :goto_0
    return-object v0

    .line 164
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected createContainerHandler(Lorg/teleal/cling/support/model/container/Container;Lorg/teleal/common/xml/SAXParser$Handler;)Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;
    .locals 1
    .param p1, "instance"    # Lorg/teleal/cling/support/model/container/Container;
    .param p2, "parent"    # Lorg/teleal/common/xml/SAXParser$Handler;

    .prologue
    .line 127
    new-instance v0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;-><init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/container/Container;Lorg/teleal/common/xml/SAXParser$Handler;)V

    return-object v0
.end method

.method protected createDescMeta(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/DescMeta;
    .locals 2
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 240
    new-instance v0, Lorg/teleal/cling/support/model/DescMeta;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/DescMeta;-><init>()V

    .line 242
    .local v0, "desc":Lorg/teleal/cling/support/model/DescMeta;
    const-string v1, "id"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/DescMeta;->setId(Ljava/lang/String;)V

    .line 244
    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 245
    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/DescMeta;->setType(Ljava/lang/String;)V

    .line 247
    :cond_0
    const-string v1, "nameSpace"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 248
    const-string v1, "nameSpace"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/DescMeta;->setNameSpace(Ljava/net/URI;)V

    .line 250
    :cond_1
    return-object v0
.end method

.method protected createDescMetaHandler(Lorg/teleal/cling/support/model/DescMeta;Lorg/teleal/common/xml/SAXParser$Handler;)Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;
    .locals 1
    .param p1, "instance"    # Lorg/teleal/cling/support/model/DescMeta;
    .param p2, "parent"    # Lorg/teleal/common/xml/SAXParser$Handler;

    .prologue
    .line 139
    new-instance v0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;-><init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/DescMeta;Lorg/teleal/common/xml/SAXParser$Handler;)V

    return-object v0
.end method

.method protected createItem(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/item/Item;
    .locals 4
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 172
    new-instance v0, Lorg/teleal/cling/support/model/item/Item;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/item/Item;-><init>()V

    .line 174
    .local v0, "item":Lorg/teleal/cling/support/model/item/Item;
    const-string v2, "id"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/item/Item;->setId(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 175
    const-string v2, "parentID"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/item/Item;->setParentID(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 178
    :try_start_0
    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v2}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v2

    .line 179
    const-string v3, "restricted"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-interface {v2, v3}, Lorg/teleal/cling/model/types/Datatype;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 181
    .local v1, "value":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/item/Item;->setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1    # "value":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    const-string v2, "refID"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 189
    const-string v2, "refID"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/item/Item;->setRefID(Ljava/lang/String;)V

    .line 191
    :cond_1
    return-object v0

    .line 184
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected createItemHandler(Lorg/teleal/cling/support/model/item/Item;Lorg/teleal/common/xml/SAXParser$Handler;)Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;
    .locals 1
    .param p1, "instance"    # Lorg/teleal/cling/support/model/item/Item;
    .param p2, "parent"    # Lorg/teleal/common/xml/SAXParser$Handler;

    .prologue
    .line 131
    new-instance v0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;-><init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/item/Item;Lorg/teleal/common/xml/SAXParser$Handler;)V

    return-object v0
.end method

.method protected createResHandler(Lorg/teleal/cling/support/model/Res;Lorg/teleal/common/xml/SAXParser$Handler;)Lorg/teleal/cling/support/contentdirectory/DIDLParser$ResHandler;
    .locals 1
    .param p1, "instance"    # Lorg/teleal/cling/support/model/Res;
    .param p2, "parent"    # Lorg/teleal/common/xml/SAXParser$Handler;

    .prologue
    .line 135
    new-instance v0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ResHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ResHandler;-><init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/Res;Lorg/teleal/common/xml/SAXParser$Handler;)V

    return-object v0
.end method

.method protected createResource(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/Res;
    .locals 5
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 195
    new-instance v1, Lorg/teleal/cling/support/model/Res;

    invoke-direct {v1}, Lorg/teleal/cling/support/model/Res;-><init>()V

    .line 197
    .local v1, "res":Lorg/teleal/cling/support/model/Res;
    const-string v2, "importUri"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 198
    const-string v2, "importUri"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/teleal/cling/support/model/Res;->setImportUri(Ljava/net/URI;)V

    .line 202
    :cond_0
    :try_start_0
    new-instance v2, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v3, "protocolInfo"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1, v2}, Lorg/teleal/cling/support/model/Res;->setProtocolInfo(Lorg/teleal/cling/support/model/ProtocolInfo;)V
    :try_end_0
    .catch Lorg/teleal/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    const-string v2, "size"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 210
    const-string v2, "size"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/teleal/cling/support/model/Res;->setSize(Ljava/lang/Long;)V

    .line 212
    :cond_1
    const-string v2, "duration"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 213
    const-string v2, "duration"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/teleal/cling/support/model/Res;->setDuration(Ljava/lang/String;)V

    .line 215
    :cond_2
    const-string v2, "bitrate"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 216
    const-string v2, "bitrate"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/teleal/cling/support/model/Res;->setBitrate(Ljava/lang/Long;)V

    .line 218
    :cond_3
    const-string v2, "sampleFrequency"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 219
    const-string v2, "sampleFrequency"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/teleal/cling/support/model/Res;->setSampleFrequency(Ljava/lang/Long;)V

    .line 221
    :cond_4
    const-string v2, "bitsPerSample"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 222
    const-string v2, "bitsPerSample"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/teleal/cling/support/model/Res;->setBitsPerSample(Ljava/lang/Long;)V

    .line 224
    :cond_5
    const-string v2, "nrAudioChannels"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 225
    const-string v2, "nrAudioChannels"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/teleal/cling/support/model/Res;->setNrAudioChannels(Ljava/lang/Long;)V

    .line 227
    :cond_6
    const-string v2, "colorDepth"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 228
    const-string v2, "colorDepth"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/teleal/cling/support/model/Res;->setColorDepth(Ljava/lang/Long;)V

    .line 230
    :cond_7
    const-string v2, "protection"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 231
    const-string v2, "protection"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/teleal/cling/support/model/Res;->setProtection(Ljava/lang/String;)V

    .line 233
    :cond_8
    const-string v2, "resolution"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 234
    const-string v2, "resolution"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/teleal/cling/support/model/Res;->setResolution(Ljava/lang/String;)V

    .line 236
    .end local v1    # "res":Lorg/teleal/cling/support/model/Res;
    :cond_9
    :goto_0
    return-object v1

    .line 204
    .restart local v1    # "res":Lorg/teleal/cling/support/model/Res;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "ex":Lorg/teleal/cling/model/types/InvalidValueException;
    sget-object v2, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "In DIDL content, invalid resource protocol info: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 206
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected createRootHandler(Lorg/teleal/cling/support/model/DIDLContent;Lorg/teleal/common/xml/SAXParser;)Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;
    .locals 1
    .param p1, "instance"    # Lorg/teleal/cling/support/model/DIDLContent;
    .param p2, "parser"    # Lorg/teleal/common/xml/SAXParser;

    .prologue
    .line 123
    new-instance v0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;-><init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/DIDLContent;Lorg/teleal/common/xml/SAXParser;)V

    return-object v0
.end method

.method public debugXML(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 606
    sget-object v0, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    sget-object v0, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    const-string v1, "-------------------------------------------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 608
    sget-object v0, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 609
    sget-object v0, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    const-string v1, "-------------------------------------------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 611
    :cond_0
    return-void
.end method

.method protected documentToString(Lorg/w3c/dom/Document;Z)Ljava/lang/String;
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .param p2, "omitProlog"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 293
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 298
    .local v1, "transFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 300
    .local v2, "transformer":Ljavax/xml/transform/Transformer;
    if-eqz p2, :cond_0

    .line 305
    const-string v3, "omit-xml-declaration"

    const-string v4, "yes"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 312
    .local v0, "out":Ljava/io/StringWriter;
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v3, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 313
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public generate(Lorg/teleal/cling/support/model/DIDLContent;)Ljava/lang/String;
    .locals 1
    .param p1, "content"    # Lorg/teleal/cling/support/model/DIDLContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->generate(Lorg/teleal/cling/support/model/DIDLContent;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/teleal/cling/support/model/DIDLContent;Z)Ljava/lang/String;
    .locals 2
    .param p1, "content"    # Lorg/teleal/cling/support/model/DIDLContent;
    .param p2, "nestedItems"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->buildDOM(Lorg/teleal/cling/support/model/DIDLContent;Z)Lorg/w3c/dom/Document;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->documentToString(Lorg/w3c/dom/Document;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected generateContainer(Lorg/teleal/cling/support/model/container/Container;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Z)V
    .locals 21
    .param p1, "container"    # Lorg/teleal/cling/support/model/container/Container;
    .param p2, "descriptor"    # Lorg/w3c/dom/Document;
    .param p3, "parent"    # Lorg/w3c/dom/Element;
    .param p4, "nestedItems"    # Z

    .prologue
    .line 354
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 355
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Missing \'dc:title\' element for container: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 357
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getClazz()Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-result-object v3

    if-nez v3, :cond_1

    .line 358
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Missing \'upnp:class\' element for container: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    :cond_1
    const-string v3, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v1, v3}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 363
    .local v5, "containerElement":Lorg/w3c/dom/Element;
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 364
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Missing id on container: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 365
    :cond_2
    const-string v3, "id"

    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getParentID()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 368
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Missing parent id on container: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 369
    :cond_3
    const-string v3, "parentID"

    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getParentID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 372
    const-string v3, "childCount"

    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_4
    const-string v3, "restricted"

    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->isRestricted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v3, "searchable"

    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->isSearchable()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v3, "dc:title"

    .line 382
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 383
    const-string v7, "http://purl.org/dc/elements/1.1/"

    .line 378
    move-object/from16 v0, p2

    invoke-static {v0, v5, v3, v4, v7}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 389
    const-string v3, "dc:creator"

    .line 390
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getCreator()Ljava/lang/String;

    move-result-object v4

    .line 391
    const-string v7, "http://purl.org/dc/elements/1.1/"

    .line 386
    move-object/from16 v0, p2

    invoke-static {v0, v5, v3, v4, v7}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 397
    const-string v3, "upnp:writeStatus"

    .line 398
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getWriteStatus()Lorg/teleal/cling/support/model/WriteStatus;

    move-result-object v4

    .line 399
    const-string v7, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    .line 394
    move-object/from16 v0, p2

    invoke-static {v0, v5, v3, v4, v7}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 402
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getClazz()Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-result-object v6

    const-string v7, "upnp:class"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->appendClass(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/String;Z)V

    .line 404
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getSearchClasses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    .line 408
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getCreateClasses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_a

    .line 412
    const-string v15, "upnp"

    const-class v16, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;

    const-string v17, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object v13, v5

    move-object/from16 v14, p1

    invoke-virtual/range {v11 .. v17}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 413
    const-string v15, "dc"

    const-class v16, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$NAMESPACE;

    const-string v17, "http://purl.org/dc/elements/1.1/"

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object v13, v5

    move-object/from16 v14, p1

    invoke-virtual/range {v11 .. v17}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 415
    if-eqz p4, :cond_6

    .line 416
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_b

    .line 422
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getResources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_c

    .line 427
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/support/model/container/Container;->getDescMetadata()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_d

    .line 431
    return-void

    .line 404
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/support/model/DIDLObject$Class;

    .line 405
    .local v6, "searchClass":Lorg/teleal/cling/support/model/DIDLObject$Class;
    const-string v7, "upnp:searchClass"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->appendClass(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/String;Z)V

    goto :goto_0

    .line 408
    .end local v6    # "searchClass":Lorg/teleal/cling/support/model/DIDLObject$Class;
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/teleal/cling/support/model/DIDLObject$Class;

    .line 409
    .local v10, "createClass":Lorg/teleal/cling/support/model/DIDLObject$Class;
    const-string v11, "upnp:createClass"

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v9, v5

    invoke-virtual/range {v7 .. v12}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->appendClass(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/String;Z)V

    goto :goto_1

    .line 416
    .end local v10    # "createClass":Lorg/teleal/cling/support/model/DIDLObject$Class;
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/teleal/cling/support/model/item/Item;

    .line 417
    .local v19, "item":Lorg/teleal/cling/support/model/item/Item;
    if-eqz v19, :cond_5

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->generateItem(Lorg/teleal/cling/support/model/item/Item;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 422
    .end local v19    # "item":Lorg/teleal/cling/support/model/item/Item;
    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/teleal/cling/support/model/Res;

    .line 423
    .local v20, "resource":Lorg/teleal/cling/support/model/Res;
    if-eqz v20, :cond_7

    .line 424
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->generateResource(Lorg/teleal/cling/support/model/Res;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_3

    .line 427
    .end local v20    # "resource":Lorg/teleal/cling/support/model/Res;
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/teleal/cling/support/model/DescMeta;

    .line 428
    .local v18, "descMeta":Lorg/teleal/cling/support/model/DescMeta;
    if-eqz v18, :cond_8

    .line 429
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->generateDescMetadata(Lorg/teleal/cling/support/model/DescMeta;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_4
.end method

.method protected generateDescMetadata(Lorg/teleal/cling/support/model/DescMeta;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "descMeta"    # Lorg/teleal/cling/support/model/DescMeta;
    .param p2, "descriptor"    # Lorg/w3c/dom/Document;
    .param p3, "parent"    # Lorg/w3c/dom/Element;

    .prologue
    .line 531
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DescMeta;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 532
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing id of description metadata: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 534
    :cond_0
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DescMeta;->getNameSpace()Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_1

    .line 535
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing namespace of description metadata: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :cond_1
    const-string v1, "desc"

    invoke-static {p2, p3, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 539
    .local v0, "descElement":Lorg/w3c/dom/Element;
    const-string v1, "id"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DescMeta;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v1, "nameSpace"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DescMeta;->getNameSpace()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DescMeta;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 542
    const-string v1, "type"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DescMeta;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_2
    invoke-virtual {p0, v0, p1}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->populateDescMetadata(Lorg/w3c/dom/Element;Lorg/teleal/cling/support/model/DescMeta;)V

    .line 544
    return-void
.end method

.method protected generateItem(Lorg/teleal/cling/support/model/item/Item;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 9
    .param p1, "item"    # Lorg/teleal/cling/support/model/item/Item;
    .param p2, "descriptor"    # Lorg/w3c/dom/Document;
    .param p3, "parent"    # Lorg/w3c/dom/Element;

    .prologue
    .line 435
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing \'dc:title\' element for item: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_0
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getClazz()Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-result-object v0

    if-nez v0, :cond_1

    .line 439
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing \'upnp:class\' element for item: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_1
    const-string v0, "item"

    invoke-static {p2, p3, v0}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 444
    .local v2, "itemElement":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 445
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing id on item: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_2
    const-string v0, "id"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getParentID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 449
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing parent id on item: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_3
    const-string v0, "parentID"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getParentID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getRefID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 453
    const-string v0, "refID"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getRefID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_4
    const-string v0, "restricted"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->isRestricted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v0, "dc:title"

    .line 460
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 461
    const-string v3, "http://purl.org/dc/elements/1.1/"

    .line 456
    invoke-static {p2, v2, v0, v1, v3}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 467
    const-string v0, "dc:creator"

    .line 468
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getCreator()Ljava/lang/String;

    move-result-object v1

    .line 469
    const-string v3, "http://purl.org/dc/elements/1.1/"

    .line 464
    invoke-static {p2, v2, v0, v1, v3}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 475
    const-string v0, "upnp:writeStatus"

    .line 476
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getWriteStatus()Lorg/teleal/cling/support/model/WriteStatus;

    move-result-object v1

    .line 477
    const-string v3, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    .line 472
    invoke-static {p2, v2, v0, v1, v3}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 480
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getClazz()Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-result-object v3

    const-string v4, "upnp:class"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->appendClass(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/String;Z)V

    .line 482
    const-string v4, "upnp"

    const-class v5, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;

    const-string v6, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 483
    const-string v4, "dc"

    const-class v5, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$NAMESPACE;

    const-string v6, "http://purl.org/dc/elements/1.1/"

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/teleal/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 485
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 490
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getDescMetadata()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 494
    return-void

    .line 485
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/teleal/cling/support/model/Res;

    .line 486
    .local v8, "resource":Lorg/teleal/cling/support/model/Res;
    if-eqz v8, :cond_5

    .line 487
    invoke-virtual {p0, v8, p2, v2}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->generateResource(Lorg/teleal/cling/support/model/Res;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 490
    .end local v8    # "resource":Lorg/teleal/cling/support/model/Res;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/support/model/DescMeta;

    .line 491
    .local v7, "descMeta":Lorg/teleal/cling/support/model/DescMeta;
    if-eqz v7, :cond_6

    .line 492
    invoke-virtual {p0, v7, p2, v2}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->generateDescMetadata(Lorg/teleal/cling/support/model/DescMeta;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_1
.end method

.method protected generateResource(Lorg/teleal/cling/support/model/Res;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "resource"    # Lorg/teleal/cling/support/model/Res;
    .param p2, "descriptor"    # Lorg/w3c/dom/Document;
    .param p3, "parent"    # Lorg/w3c/dom/Element;

    .prologue
    .line 498
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 499
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing resource URI value"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    :cond_0
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getProtocolInfo()Lorg/teleal/cling/support/model/ProtocolInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 502
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing resource protocol info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 505
    :cond_1
    const-string v1, "res"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p3, v1, v2}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 506
    .local v0, "resourceElement":Lorg/w3c/dom/Element;
    const-string v1, "protocolInfo"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getProtocolInfo()Lorg/teleal/cling/support/model/ProtocolInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/support/model/ProtocolInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getImportUri()Ljava/net/URI;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 508
    const-string v1, "importUri"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getImportUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_2
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getSize()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 510
    const-string v1, "size"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_3
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 512
    const-string v1, "duration"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_4
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getBitrate()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 514
    const-string v1, "bitrate"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getBitrate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_5
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getSampleFrequency()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 516
    const-string v1, "sampleFrequency"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getSampleFrequency()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_6
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getBitsPerSample()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 518
    const-string v1, "bitsPerSample"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getBitsPerSample()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_7
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getNrAudioChannels()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 520
    const-string v1, "nrAudioChannels"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getNrAudioChannels()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_8
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getColorDepth()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 522
    const-string v1, "colorDepth"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getColorDepth()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_9
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getProtection()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 524
    const-string v1, "protection"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getProtection()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_a
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 526
    const-string v1, "resolution"

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_b
    return-void
.end method

.method protected generateRoot(Lorg/teleal/cling/support/model/DIDLContent;Lorg/w3c/dom/Document;Z)V
    .locals 7
    .param p1, "content"    # Lorg/teleal/cling/support/model/DIDLContent;
    .param p2, "descriptor"    # Lorg/w3c/dom/Document;
    .param p3, "nestedItems"    # Z

    .prologue
    .line 329
    const-string v4, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    const-string v5, "DIDL-Lite"

    invoke-interface {p2, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 330
    .local v3, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface {p2, v3}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 333
    const-string v4, "http://www.w3.org/2000/xmlns/"

    const-string v5, "xmlns:upnp"

    const-string v6, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    invoke-interface {v3, v4, v5, v6}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v4, "http://www.w3.org/2000/xmlns/"

    const-string v5, "xmlns:dc"

    const-string v6, "http://purl.org/dc/elements/1.1/"

    invoke-interface {v3, v4, v5, v6}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLContent;->getContainers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 341
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLContent;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 346
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLContent;->getDescMetadata()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 350
    return-void

    .line 336
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/container/Container;

    .line 337
    .local v0, "container":Lorg/teleal/cling/support/model/container/Container;
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0, v0, p2, v3, p3}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->generateContainer(Lorg/teleal/cling/support/model/container/Container;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Z)V

    goto :goto_0

    .line 341
    .end local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/model/item/Item;

    .line 342
    .local v2, "item":Lorg/teleal/cling/support/model/item/Item;
    if-eqz v2, :cond_1

    .line 343
    invoke-virtual {p0, v2, p2, v3}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->generateItem(Lorg/teleal/cling/support/model/item/Item;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_1

    .line 346
    .end local v2    # "item":Lorg/teleal/cling/support/model/item/Item;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/DescMeta;

    .line 347
    .local v1, "descMeta":Lorg/teleal/cling/support/model/DescMeta;
    if-eqz v1, :cond_2

    .line 348
    invoke-virtual {p0, v1, p2, v3}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->generateDescMetadata(Lorg/teleal/cling/support/model/DescMeta;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_2
.end method

.method public parse(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLContent;
    .locals 3
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 111
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Null or empty XML"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_1
    new-instance v0, Lorg/teleal/cling/support/model/DIDLContent;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/DIDLContent;-><init>()V

    .line 115
    .local v0, "content":Lorg/teleal/cling/support/model/DIDLContent;
    invoke-virtual {p0, v0, p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createRootHandler(Lorg/teleal/cling/support/model/DIDLContent;Lorg/teleal/common/xml/SAXParser;)Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;

    .line 117
    sget-object v1, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    const-string v2, "Parsing DIDL XML content"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 118
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 119
    return-object v0
.end method

.method public parseResource(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLContent;
    .locals 2
    .param p1, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lorg/teleal/common/io/IO;->readLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->parse(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 97
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 95
    :cond_0
    return-object v1

    .line 96
    :catchall_0
    move-exception v1

    .line 97
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 98
    :cond_1
    throw v1
.end method

.method protected populateDescMetadata(Lorg/w3c/dom/Element;Lorg/teleal/cling/support/model/DescMeta;)V
    .locals 8
    .param p1, "descElement"    # Lorg/w3c/dom/Element;
    .param p2, "descMeta"    # Lorg/teleal/cling/support/model/DescMeta;

    .prologue
    const/4 v6, 0x1

    .line 558
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DescMeta;->getMetadata()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/w3c/dom/Document;

    if-eqz v5, :cond_2

    .line 559
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DescMeta;->getMetadata()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Document;

    .line 561
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 562
    .local v4, "nl":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 574
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "i":I
    .end local v4    # "nl":Lorg/w3c/dom/NodeList;
    :goto_1
    return-void

    .line 563
    .restart local v1    # "doc":Lorg/w3c/dom/Document;
    .restart local v2    # "i":I
    .restart local v4    # "nl":Lorg/w3c/dom/NodeList;
    :cond_0
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 564
    .local v3, "n":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v6, :cond_1

    .line 562
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    invoke-interface {v5, v3, v6}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 568
    .local v0, "clone":Lorg/w3c/dom/Node;
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    .line 572
    .end local v0    # "clone":Lorg/w3c/dom/Node;
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "i":I
    .end local v3    # "n":Lorg/w3c/dom/Node;
    .end local v4    # "nl":Lorg/w3c/dom/NodeList;
    :cond_2
    sget-object v5, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown desc metadata content, please override populateDescMetadata(): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DescMeta;->getMetadata()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1
.end method
