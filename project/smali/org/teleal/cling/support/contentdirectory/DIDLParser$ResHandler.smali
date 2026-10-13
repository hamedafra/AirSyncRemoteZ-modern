.class public Lorg/teleal/cling/support/contentdirectory/DIDLParser$ResHandler;
.super Lorg/teleal/common/xml/SAXParser$Handler;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/contentdirectory/DIDLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ResHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/common/xml/SAXParser$Handler",
        "<",
        "Lorg/teleal/cling/support/model/Res;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/Res;Lorg/teleal/common/xml/SAXParser$Handler;)V
    .locals 0
    .param p2, "instance"    # Lorg/teleal/cling/support/model/Res;
    .param p3, "parent"    # Lorg/teleal/common/xml/SAXParser$Handler;

    .prologue
    .line 987
    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ResHandler;->this$0:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    .line 988
    invoke-direct {p0, p2, p3}, Lorg/teleal/common/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser$Handler;)V

    .line 989
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 993
    invoke-super {p0, p1, p2, p3}, Lorg/teleal/common/xml/SAXParser$Handler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ResHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Res;

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ResHandler;->getCharacters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/Res;->setValue(Ljava/lang/String;)V

    .line 995
    return-void
.end method

.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 999
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "res"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
