.class Lorg/teleal/cling/support/lastchange/LastChangeParser$RootHandler;
.super Lorg/teleal/common/xml/SAXParser$Handler;
.source "LastChangeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/lastchange/LastChangeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RootHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/common/xml/SAXParser$Handler",
        "<",
        "Lorg/teleal/cling/support/lastchange/Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/lastchange/LastChangeParser;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/lastchange/LastChangeParser;Lorg/teleal/cling/support/lastchange/Event;)V
    .locals 0
    .param p2, "instance"    # Lorg/teleal/cling/support/lastchange/Event;

    .prologue
    .line 131
    iput-object p1, p0, Lorg/teleal/cling/support/lastchange/LastChangeParser$RootHandler;->this$0:Lorg/teleal/cling/support/lastchange/LastChangeParser;

    .line 132
    invoke-direct {p0, p2}, Lorg/teleal/common/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method constructor <init>(Lorg/teleal/cling/support/lastchange/LastChangeParser;Lorg/teleal/cling/support/lastchange/Event;Lorg/teleal/common/xml/SAXParser;)V
    .locals 0
    .param p2, "instance"    # Lorg/teleal/cling/support/lastchange/Event;
    .param p3, "parser"    # Lorg/teleal/common/xml/SAXParser;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/teleal/cling/support/lastchange/LastChangeParser$RootHandler;->this$0:Lorg/teleal/cling/support/lastchange/LastChangeParser;

    .line 128
    invoke-direct {p0, p2, p3}, Lorg/teleal/common/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser;)V

    .line 129
    return-void
.end method


# virtual methods
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
    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Lorg/teleal/common/xml/SAXParser$Handler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 138
    sget-object v2, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->InstanceID:Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {v2, p2}, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->equals(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    sget-object v2, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->val:Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {v2}, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "valAttr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 141
    new-instance v0, Lorg/teleal/cling/support/lastchange/InstanceID;

    new-instance v2, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v2, v1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/teleal/cling/support/lastchange/InstanceID;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V

    .line 142
    .local v0, "instanceID":Lorg/teleal/cling/support/lastchange/InstanceID;
    invoke-virtual {p0}, Lorg/teleal/cling/support/lastchange/LastChangeParser$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/lastchange/Event;

    invoke-virtual {v2}, Lorg/teleal/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v2, Lorg/teleal/cling/support/lastchange/LastChangeParser$InstanceIDHandler;

    iget-object v3, p0, Lorg/teleal/cling/support/lastchange/LastChangeParser$RootHandler;->this$0:Lorg/teleal/cling/support/lastchange/LastChangeParser;

    invoke-direct {v2, v3, v0, p0}, Lorg/teleal/cling/support/lastchange/LastChangeParser$InstanceIDHandler;-><init>(Lorg/teleal/cling/support/lastchange/LastChangeParser;Lorg/teleal/cling/support/lastchange/InstanceID;Lorg/teleal/common/xml/SAXParser$Handler;)V

    .line 146
    .end local v0    # "instanceID":Lorg/teleal/cling/support/lastchange/InstanceID;
    .end local v1    # "valAttr":Ljava/lang/String;
    :cond_0
    return-void
.end method
