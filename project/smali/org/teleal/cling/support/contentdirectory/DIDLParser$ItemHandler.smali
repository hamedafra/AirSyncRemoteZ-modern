.class public Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;
.super Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/contentdirectory/DIDLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler",
        "<",
        "Lorg/teleal/cling/support/model/item/Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/item/Item;Lorg/teleal/common/xml/SAXParser$Handler;)V
    .locals 0
    .param p2, "instance"    # Lorg/teleal/cling/support/model/item/Item;
    .param p3, "parent"    # Lorg/teleal/common/xml/SAXParser$Handler;

    .prologue
    .line 944
    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    .line 945
    invoke-direct {p0, p1, p2, p3}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;-><init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/DIDLObject;Lorg/teleal/common/xml/SAXParser$Handler;)V

    .line 946
    return-void
.end method


# virtual methods
.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 973
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "item"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 974
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/item/Item;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/item/Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 975
    invoke-static {}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->access$0()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "In DIDL content, missing \'dc:title\' element for item: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/item/Item;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 977
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/item/Item;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/item/Item;->getClazz()Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-result-object v0

    if-nez v0, :cond_1

    .line 978
    invoke-static {}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->access$0()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "In DIDL content, missing \'upnp:class\' element for item: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/item/Item;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 980
    :cond_1
    const/4 v0, 0x1

    .line 982
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
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
    .line 950
    invoke-super {p0, p1, p2, p3, p4}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 952
    const-string v2, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    const-string v2, "res"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 956
    iget-object v2, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v2, p4}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createResource(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/Res;

    move-result-object v1

    .line 957
    .local v1, "res":Lorg/teleal/cling/support/model/Res;
    if-eqz v1, :cond_0

    .line 958
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/model/item/Item;

    invoke-virtual {v2, v1}, Lorg/teleal/cling/support/model/item/Item;->addResource(Lorg/teleal/cling/support/model/Res;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 959
    iget-object v2, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v2, v1, p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createResHandler(Lorg/teleal/cling/support/model/Res;Lorg/teleal/common/xml/SAXParser$Handler;)Lorg/teleal/cling/support/contentdirectory/DIDLParser$ResHandler;

    goto :goto_0

    .line 962
    .end local v1    # "res":Lorg/teleal/cling/support/model/Res;
    :cond_2
    const-string v2, "desc"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    iget-object v2, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v2, p4}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createDescMeta(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/DescMeta;

    move-result-object v0

    .line 965
    .local v0, "desc":Lorg/teleal/cling/support/model/DescMeta;
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/model/item/Item;

    invoke-virtual {v2, v0}, Lorg/teleal/cling/support/model/item/Item;->addDescMetadata(Lorg/teleal/cling/support/model/DescMeta;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 966
    iget-object v2, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v2, v0, p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createDescMetaHandler(Lorg/teleal/cling/support/model/DescMeta;Lorg/teleal/common/xml/SAXParser$Handler;)Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;

    goto :goto_0
.end method
