.class public Lorg/teleal/common/xml/SAXParser$Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/common/xml/SAXParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/xml/sax/helpers/DefaultHandler;"
    }
.end annotation


# instance fields
.field protected attributes:Lorg/xml/sax/Attributes;

.field protected characters:Ljava/lang/StringBuilder;

.field protected instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field protected parent:Lorg/teleal/common/xml/SAXParser$Handler;

.field protected parser:Lorg/teleal/common/xml/SAXParser;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/teleal/common/xml/SAXParser$Handler;, "Lorg/teleal/common/xml/SAXParser$Handler<TI;>;"
    .local p1, "instance":Ljava/lang/Object;, "TI;"
    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, v0, v0}, Lorg/teleal/common/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser;Lorg/teleal/common/xml/SAXParser$Handler;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser$Handler;)V
    .locals 1
    .param p2, "parent"    # Lorg/teleal/common/xml/SAXParser$Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/teleal/common/xml/SAXParser$Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lorg/teleal/common/xml/SAXParser$Handler;, "Lorg/teleal/common/xml/SAXParser$Handler<TI;>;"
    .local p1, "instance":Ljava/lang/Object;, "TI;"
    invoke-virtual {p2}, Lorg/teleal/common/xml/SAXParser$Handler;->getParser()Lorg/teleal/common/xml/SAXParser;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/teleal/common/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser;Lorg/teleal/common/xml/SAXParser$Handler;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser;)V
    .locals 1
    .param p2, "parser"    # Lorg/teleal/common/xml/SAXParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/teleal/common/xml/SAXParser;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lorg/teleal/common/xml/SAXParser$Handler;, "Lorg/teleal/common/xml/SAXParser$Handler<TI;>;"
    .local p1, "instance":Ljava/lang/Object;, "TI;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/common/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser;Lorg/teleal/common/xml/SAXParser$Handler;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser;Lorg/teleal/common/xml/SAXParser$Handler;)V
    .locals 1
    .param p2, "parser"    # Lorg/teleal/common/xml/SAXParser;
    .param p3, "parent"    # Lorg/teleal/common/xml/SAXParser$Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/teleal/common/xml/SAXParser;",
            "Lorg/teleal/common/xml/SAXParser$Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lorg/teleal/common/xml/SAXParser$Handler;, "Lorg/teleal/common/xml/SAXParser$Handler<TI;>;"
    .local p1, "instance":Ljava/lang/Object;, "TI;"
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->characters:Ljava/lang/StringBuilder;

    .line 154
    iput-object p1, p0, Lorg/teleal/common/xml/SAXParser$Handler;->instance:Ljava/lang/Object;

    .line 155
    iput-object p2, p0, Lorg/teleal/common/xml/SAXParser$Handler;->parser:Lorg/teleal/common/xml/SAXParser;

    .line 156
    iput-object p3, p0, Lorg/teleal/common/xml/SAXParser$Handler;->parent:Lorg/teleal/common/xml/SAXParser$Handler;

    .line 157
    if-eqz p2, :cond_0

    .line 158
    invoke-virtual {p2, p0}, Lorg/teleal/common/xml/SAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 160
    :cond_0
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lorg/teleal/common/xml/SAXParser$Handler;, "Lorg/teleal/common/xml/SAXParser$Handler<TI;>;"
    iget-object v0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->characters:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 196
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lorg/teleal/common/xml/SAXParser$Handler;, "Lorg/teleal/common/xml/SAXParser$Handler<TI;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/teleal/common/xml/SAXParser$Handler;->isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lorg/teleal/common/xml/SAXParser;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": last element, switching to parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lorg/teleal/common/xml/SAXParser$Handler;->switchToParent()V

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-static {}, Lorg/teleal/common/xml/SAXParser;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getAttributes()Lorg/xml/sax/Attributes;
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Lorg/teleal/common/xml/SAXParser$Handler;, "Lorg/teleal/common/xml/SAXParser$Handler<TI;>;"
    iget-object v0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->attributes:Lorg/xml/sax/Attributes;

    return-object v0
.end method

.method public getCharacters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lorg/teleal/common/xml/SAXParser$Handler;, "Lorg/teleal/common/xml/SAXParser$Handler<TI;>;"
    iget-object v0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->characters:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lorg/teleal/common/xml/SAXParser$Handler;, "Lorg/teleal/common/xml/SAXParser$Handler<TI;>;"
    iget-object v0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public getParent()Lorg/teleal/common/xml/SAXParser$Handler;
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lorg/teleal/common/xml/SAXParser$Handler;, "Lorg/teleal/common/xml/SAXParser$Handler<TI;>;"
    iget-object v0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->parent:Lorg/teleal/common/xml/SAXParser$Handler;

    return-object v0
.end method

.method public getParser()Lorg/teleal/common/xml/SAXParser;
    .locals 1

    .prologue
    .line 167
    .local p0, "this":Lorg/teleal/common/xml/SAXParser$Handler;, "Lorg/teleal/common/xml/SAXParser$Handler<TI;>;"
    iget-object v0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->parser:Lorg/teleal/common/xml/SAXParser;

    return-object v0
.end method

.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 212
    .local p0, "this":Lorg/teleal/common/xml/SAXParser$Handler;, "Lorg/teleal/common/xml/SAXParser$Handler<TI;>;"
    const/4 v0, 0x0

    return v0
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
    .line 188
    .local p0, "this":Lorg/teleal/common/xml/SAXParser$Handler;, "Lorg/teleal/common/xml/SAXParser$Handler<TI;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->characters:Ljava/lang/StringBuilder;

    .line 189
    iput-object p4, p0, Lorg/teleal/common/xml/SAXParser$Handler;->attributes:Lorg/xml/sax/Attributes;

    .line 190
    invoke-static {}, Lorg/teleal/common/xml/SAXParser;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method protected switchToParent()V
    .locals 2

    .prologue
    .line 175
    .local p0, "this":Lorg/teleal/common/xml/SAXParser$Handler;, "Lorg/teleal/common/xml/SAXParser$Handler<TI;>;"
    iget-object v0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->parser:Lorg/teleal/common/xml/SAXParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->parent:Lorg/teleal/common/xml/SAXParser$Handler;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->parser:Lorg/teleal/common/xml/SAXParser;

    iget-object v1, p0, Lorg/teleal/common/xml/SAXParser$Handler;->parent:Lorg/teleal/common/xml/SAXParser$Handler;

    invoke-virtual {v0, v1}, Lorg/teleal/common/xml/SAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->attributes:Lorg/xml/sax/Attributes;

    .line 179
    :cond_0
    return-void
.end method
