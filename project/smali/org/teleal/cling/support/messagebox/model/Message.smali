.class public abstract Lorg/teleal/cling/support/messagebox/model/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lorg/teleal/cling/support/messagebox/model/ElementAppender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/support/messagebox/model/Message$Category;,
        Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;
    }
.end annotation


# instance fields
.field private final category:Lorg/teleal/cling/support/messagebox/model/Message$Category;

.field private displayType:Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;

.field private final id:I

.field protected final randomGenerator:Ljava/util/Random;


# direct methods
.method public constructor <init>(ILorg/teleal/cling/support/messagebox/model/Message$Category;Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "category"    # Lorg/teleal/cling/support/messagebox/model/Message$Category;
    .param p3, "displayType"    # Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/messagebox/model/Message;->randomGenerator:Ljava/util/Random;

    .line 69
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/Message;->randomGenerator:Ljava/util/Random;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 70
    :cond_0
    iput p1, p0, Lorg/teleal/cling/support/messagebox/model/Message;->id:I

    .line 71
    iput-object p2, p0, Lorg/teleal/cling/support/messagebox/model/Message;->category:Lorg/teleal/cling/support/messagebox/model/Message$Category;

    .line 72
    iput-object p3, p0, Lorg/teleal/cling/support/messagebox/model/Message;->displayType:Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/messagebox/model/Message$Category;Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;)V
    .locals 1
    .param p1, "category"    # Lorg/teleal/cling/support/messagebox/model/Message$Category;
    .param p2, "displayType"    # Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/teleal/cling/support/messagebox/model/Message;-><init>(ILorg/teleal/cling/support/messagebox/model/Message$Category;Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;)V

    .line 66
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-ne p0, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v1

    .line 90
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 92
    check-cast v0, Lorg/teleal/cling/support/messagebox/model/Message;

    .line 94
    .local v0, "message":Lorg/teleal/cling/support/messagebox/model/Message;
    iget v3, p0, Lorg/teleal/cling/support/messagebox/model/Message;->id:I

    iget v4, v0, Lorg/teleal/cling/support/messagebox/model/Message;->id:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getCategory()Lorg/teleal/cling/support/messagebox/model/Message$Category;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/Message;->category:Lorg/teleal/cling/support/messagebox/model/Message$Category;

    return-object v0
.end method

.method public getDisplayType()Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/Message;->displayType:Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/teleal/cling/support/messagebox/model/Message;->id:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/teleal/cling/support/messagebox/model/Message;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 107
    :try_start_0
    new-instance v2, Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser;

    invoke-direct {v2}, Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser;-><init>()V

    .line 108
    .local v2, "mp":Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser;
    invoke-virtual {v2}, Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser;->createDocument()Lorg/teleal/common/xml/DOM;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageDOM;

    .line 110
    .local v0, "dom":Lorg/teleal/cling/support/messagebox/parser/MessageDOM;
    invoke-virtual {v2}, Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser;->createXPath()Ljavax/xml/xpath/XPath;

    move-result-object v5

    const-string v6, "Message"

    invoke-virtual {v0, v5, v6}, Lorg/teleal/cling/support/messagebox/parser/MessageDOM;->createRoot(Ljavax/xml/xpath/XPath;Ljava/lang/String;)Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    move-result-object v3

    .line 111
    .local v3, "root":Lorg/teleal/cling/support/messagebox/parser/MessageElement;
    const-string v5, "Category"

    invoke-virtual {v3, v5}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/Message;->getCategory()Lorg/teleal/cling/support/messagebox/model/Message$Category;

    move-result-object v6

    iget-object v6, v6, Lorg/teleal/cling/support/messagebox/model/Message$Category;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    .line 112
    const-string v5, "DisplayType"

    invoke-virtual {v3, v5}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/Message;->getDisplayType()Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;

    move-result-object v6

    iget-object v6, v6, Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    .line 113
    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/messagebox/model/Message;->appendMessageElements(Lorg/teleal/cling/support/messagebox/parser/MessageElement;)V

    .line 115
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v5, v6}, Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser;->print(Lorg/teleal/common/xml/DOM;IZ)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "s":Ljava/lang/String;
    const-string v5, "<Message xmlns=\"urn:samsung-com:messagebox-1-0\">"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    const-string v6, "</Message>"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/teleal/common/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 119
    return-object v5

    .line 123
    .end local v0    # "dom":Lorg/teleal/cling/support/messagebox/parser/MessageDOM;
    .end local v2    # "mp":Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser;
    .end local v3    # "root":Lorg/teleal/cling/support/messagebox/parser/MessageElement;
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "ex":Lorg/teleal/common/xml/ParserException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
