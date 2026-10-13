.class public Lorg/teleal/cling/support/messagebox/model/NumberName;
.super Ljava/lang/Object;
.source "NumberName.java"

# interfaces
.implements Lorg/teleal/cling/support/messagebox/model/ElementAppender;


# instance fields
.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/teleal/cling/support/messagebox/model/NumberName;->number:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lorg/teleal/cling/support/messagebox/model/NumberName;->name:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public appendMessageElements(Lorg/teleal/cling/support/messagebox/parser/MessageElement;)V
    .locals 2
    .param p1, "parent"    # Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    .prologue
    .line 44
    const-string v0, "Number"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/NumberName;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    .line 45
    const-string v0, "Name"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/NumberName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    .line 46
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/NumberName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/NumberName;->number:Ljava/lang/String;

    return-object v0
.end method
