.class public Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;
.super Lorg/teleal/common/xml/SAXParser$Handler;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/contentdirectory/DIDLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RootHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/common/xml/SAXParser$Handler",
        "<",
        "Lorg/teleal/cling/support/model/DIDLContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/DIDLContent;Lorg/teleal/common/xml/SAXParser;)V
    .locals 0
    .param p2, "instance"    # Lorg/teleal/cling/support/model/DIDLContent;
    .param p3, "parser"    # Lorg/teleal/common/xml/SAXParser;

    .prologue
    .line 816
    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    .line 817
    invoke-direct {p0, p2, p3}, Lorg/teleal/common/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser;)V

    .line 818
    return-void
.end method


# virtual methods
.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 849
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DIDL-Lite"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/DIDLContent;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLContent;->replaceGenericContainerAndItems()V

    .line 855
    const/4 v0, 0x1

    .line 857
    :goto_0
    return v0

    :cond_0
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
    .line 822
    invoke-super {p0, p1, p2, p3, p4}, Lorg/teleal/common/xml/SAXParser$Handler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 824
    const-string v3, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    const-string v3, "container"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 828
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v3, p4}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createContainer(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 829
    .local v0, "container":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/support/model/DIDLContent;

    invoke-virtual {v3, v0}, Lorg/teleal/cling/support/model/DIDLContent;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/DIDLContent;

    .line 830
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v3, v0, p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createContainerHandler(Lorg/teleal/cling/support/model/container/Container;Lorg/teleal/common/xml/SAXParser$Handler;)Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;

    goto :goto_0

    .line 832
    .end local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_2
    const-string v3, "item"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 834
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v3, p4}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createItem(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/item/Item;

    move-result-object v2

    .line 835
    .local v2, "item":Lorg/teleal/cling/support/model/item/Item;
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/support/model/DIDLContent;

    invoke-virtual {v3, v2}, Lorg/teleal/cling/support/model/DIDLContent;->addItem(Lorg/teleal/cling/support/model/item/Item;)Lorg/teleal/cling/support/model/DIDLContent;

    .line 836
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v3, v2, p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createItemHandler(Lorg/teleal/cling/support/model/item/Item;Lorg/teleal/common/xml/SAXParser$Handler;)Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;

    goto :goto_0

    .line 838
    .end local v2    # "item":Lorg/teleal/cling/support/model/item/Item;
    :cond_3
    const-string v3, "desc"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 840
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v3, p4}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createDescMeta(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/DescMeta;

    move-result-object v1

    .line 841
    .local v1, "desc":Lorg/teleal/cling/support/model/DescMeta;
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/support/model/DIDLContent;

    invoke-virtual {v3, v1}, Lorg/teleal/cling/support/model/DIDLContent;->addDescMetadata(Lorg/teleal/cling/support/model/DescMeta;)Lorg/teleal/cling/support/model/DIDLContent;

    .line 842
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v3, v1, p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->createDescMetaHandler(Lorg/teleal/cling/support/model/DescMeta;Lorg/teleal/common/xml/SAXParser$Handler;)Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;

    goto :goto_0
.end method
