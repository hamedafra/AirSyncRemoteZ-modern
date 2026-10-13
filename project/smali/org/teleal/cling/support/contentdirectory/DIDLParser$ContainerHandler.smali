.class public Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;
.super Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/contentdirectory/DIDLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContainerHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler",
        "<",
        "Lorg/teleal/cling/support/model/container/Container;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/container/Container;Lorg/teleal/common/xml/SAXParser$Handler;)V
    .locals 0
    .param p2, "instance"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "parent"    # Lorg/teleal/common/xml/SAXParser$Handler;

    .prologue
    .line 862
    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    .line 863
    invoke-direct {p0, p1, p2, p3}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;-><init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/DIDLObject;Lorg/teleal/common/xml/SAXParser$Handler;)V

    .line 864
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 904
    invoke-super {p0, p1, p2, p3}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    const-string v0, "searchClass"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/container/Container;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getSearchClasses()Ljava/util/List;

    move-result-object v0

    .line 910
    new-instance v1, Lorg/teleal/cling/support/model/DIDLObject$Class;

    .line 911
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    .line 912
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 913
    const-string v4, "true"

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v5

    const-string v6, "includeDerived"

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 910
    invoke-direct {v1, v2, v3, v4}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 909
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    const-string v0, "createClass"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/container/Container;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getCreateClasses()Ljava/util/List;

    move-result-object v0

    .line 918
    new-instance v1, Lorg/teleal/cling/support/model/DIDLObject$Class;

    .line 919
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    .line 920
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 921
    const-string v4, "true"

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v5

    const-string v6, "includeDerived"

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 918
    invoke-direct {v1, v2, v3, v4}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 917
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 930
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "container"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 931
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/container/Container;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 932
    invoke-static {}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->access$0()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "In DIDL content, missing \'dc:title\' element for container: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/container/Container;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 934
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/container/Container;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getClazz()Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-result-object v0

    if-nez v0, :cond_1

    .line 935
    invoke-static {}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->access$0()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "In DIDL content, missing \'upnp:class\' element for container: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/container/Container;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 937
    :cond_1
    const/4 v0, 0x1

    .line 939
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 868
    invoke-super {p0, p1, p2, p3, p4}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 870
    const-string v3, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    const-string v3, "item"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 874
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v3, p4}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createItem(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/item/Item;

    move-result-object v1

    .line 875
    .local v1, "item":Lorg/teleal/cling/support/model/item/Item;
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/support/model/container/Container;

    invoke-virtual {v3, v1}, Lorg/teleal/cling/support/model/container/Container;->addItem(Lorg/teleal/cling/support/model/item/Item;)Lorg/teleal/cling/support/model/container/Container;

    .line 876
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v3, v1, p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createItemHandler(Lorg/teleal/cling/support/model/item/Item;Lorg/teleal/common/xml/SAXParser$Handler;)Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;

    goto :goto_0

    .line 878
    .end local v1    # "item":Lorg/teleal/cling/support/model/item/Item;
    :cond_2
    const-string v3, "desc"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 880
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v3, p4}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createDescMeta(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/DescMeta;

    move-result-object v0

    .line 881
    .local v0, "desc":Lorg/teleal/cling/support/model/DescMeta;
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/support/model/container/Container;

    invoke-virtual {v3, v0}, Lorg/teleal/cling/support/model/container/Container;->addDescMetadata(Lorg/teleal/cling/support/model/DescMeta;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 882
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v3, v0, p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createDescMetaHandler(Lorg/teleal/cling/support/model/DescMeta;Lorg/teleal/common/xml/SAXParser$Handler;)Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;

    goto :goto_0

    .line 884
    .end local v0    # "desc":Lorg/teleal/cling/support/model/DescMeta;
    :cond_3
    const-string v3, "res"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 886
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v3, p4}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createResource(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/Res;

    move-result-object v2

    .line 887
    .local v2, "res":Lorg/teleal/cling/support/model/Res;
    if-eqz v2, :cond_0

    .line 888
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/support/model/container/Container;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/support/model/container/Container;->addResource(Lorg/teleal/cling/support/model/Res;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 889
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v3, v2, p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createResHandler(Lorg/teleal/cling/support/model/Res;Lorg/teleal/common/xml/SAXParser$Handler;)Lorg/teleal/cling/support/contentdirectory/DIDLParser$ResHandler;

    goto :goto_0
.end method
