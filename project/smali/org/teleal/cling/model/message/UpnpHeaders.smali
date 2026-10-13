.class public Lorg/teleal/cling/model/message/UpnpHeaders;
.super Lorg/teleal/common/http/Headers;
.source "UpnpHeaders.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected parsedHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/message/header/UpnpHeader;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/teleal/common/http/Headers;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/teleal/common/http/Headers;-><init>(Ljava/io/ByteArrayInputStream;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0, p1}, Lorg/teleal/common/http/Headers;-><init>(Ljava/util/Map;)V

    .line 47
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    .line 98
    invoke-super {p0, p1, p2}, Lorg/teleal/common/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V
    .locals 2
    .param p2, "value"    # Lorg/teleal/cling/model/message/header/UpnpHeader;

    .prologue
    .line 124
    .local p1, "type":Lorg/teleal/cling/model/message/header/UpnpHeader$Type;, "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;"
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lorg/teleal/common/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/model/message/UpnpHeaders;->addParsedValue(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 127
    :cond_0
    return-void
.end method

.method protected addParsedValue(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V
    .locals 4
    .param p2, "value"    # Lorg/teleal/cling/model/message/header/UpnpHeader;

    .prologue
    .line 80
    .local p1, "type":Lorg/teleal/cling/model/message/header/UpnpHeader$Type;, "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;"
    sget-object v1, Lorg/teleal/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding parsed header: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/header/UpnpHeader;>;"
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/header/UpnpHeader;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 84
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/header/UpnpHeader;>;"
    iget-object v1, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    .line 110
    invoke-super {p0}, Lorg/teleal/common/http/Headers;->clear()V

    .line 111
    return-void
.end method

.method public containsKey(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)Z
    .locals 1

    .prologue
    .line 114
    .local p1, "type":Lorg/teleal/cling/model/message/header/UpnpHeader$Type;, "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;"
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpHeaders;->parseHeaders()V

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/message/header/UpnpHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "type":Lorg/teleal/cling/model/message/header/UpnpHeader$Type;, "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;"
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpHeaders;->parseHeaders()V

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getAsArray(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)[Lorg/teleal/cling/model/message/header/UpnpHeader;
    .locals 2

    .prologue
    .line 136
    .local p1, "type":Lorg/teleal/cling/model/message/header/UpnpHeader$Type;, "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;"
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpHeaders;->parseHeaders()V

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/model/message/header/UpnpHeader;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/message/header/UpnpHeader;

    .line 137
    :goto_0
    return-object v0

    .line 139
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/teleal/cling/model/message/header/UpnpHeader;

    goto :goto_0
.end method

.method public getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)Lorg/teleal/cling/model/message/header/UpnpHeader;
    .locals 2

    .prologue
    .line 143
    .local p1, "type":Lorg/teleal/cling/model/message/header/UpnpHeader$Type;, "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/UpnpHeaders;->getAsArray(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)[Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/UpnpHeaders;->getAsArray(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)[Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 143
    :goto_0
    return-object v0

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Lorg/teleal/cling/model/message/header/UpnpHeader;",
            ">(",
            "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;",
            "Ljava/lang/Class",
            "<TH;>;)TH;"
        }
    .end annotation

    .prologue
    .local p1, "type":Lorg/teleal/cling/model/message/header/UpnpHeader$Type;, "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;"
    .local p2, "subtype":Ljava/lang/Class;, "Ljava/lang/Class<TH;>;"
    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/UpnpHeaders;->getAsArray(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)[Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v1

    .line 150
    .local v1, "headers":[Lorg/teleal/cling/model/message/header/UpnpHeader;
    array-length v3, v1

    if-nez v3, :cond_1

    move-object v0, v2

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_2

    move-object v0, v2

    .line 157
    goto :goto_0

    .line 152
    :cond_2
    aget-object v0, v1, v3

    .line 153
    .local v0, "header":Lorg/teleal/cling/model/message/header/UpnpHeader;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public log()V
    .locals 9

    .prologue
    .line 161
    sget-object v4, Lorg/teleal/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 162
    sget-object v4, Lorg/teleal/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    const-string v5, "############################ RAW HEADERS ###########################"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 169
    iget-object v4, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 170
    sget-object v4, Lorg/teleal/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    const-string v5, "########################## PARSED HEADERS ##########################"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 171
    iget-object v4, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 178
    :cond_2
    sget-object v4, Lorg/teleal/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    const-string v5, "####################################################################"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 180
    :cond_3
    return-void

    .line 163
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    sget-object v6, Lorg/teleal/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v4, "=== NAME : "

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 166
    .local v3, "v":Ljava/lang/String;
    sget-object v6, Lorg/teleal/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "VALUE: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "v":Ljava/lang/String;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 172
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/util/List<Lorg/teleal/cling/model/message/header/UpnpHeader;>;>;"
    sget-object v4, Lorg/teleal/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "=== TYPE: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 173
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/header/UpnpHeader;

    .line 174
    .local v2, "upnpHeader":Lorg/teleal/cling/model/message/header/UpnpHeader;
    sget-object v6, Lorg/teleal/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "HEADER: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected parseHeaders()V
    .locals 9

    .prologue
    .line 55
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    .line 56
    sget-object v4, Lorg/teleal/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Parsing all HTTP headers for known UPnP headers: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpHeaders;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 77
    return-void

    .line 57
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 59
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 61
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->getByHttpName(Ljava/lang/String;)Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    move-result-object v1

    .line 62
    .local v1, "type":Lorg/teleal/cling/model/message/header/UpnpHeader$Type;, "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;"
    if-nez v1, :cond_2

    .line 63
    sget-object v6, Lorg/teleal/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring non-UPNP HTTP header: "

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 68
    .local v3, "value":Ljava/lang/String;
    invoke-static {v1, v3}, Lorg/teleal/cling/model/message/header/UpnpHeader;->newInstance(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/String;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v2

    .line 69
    .local v2, "upnpHeader":Lorg/teleal/cling/model/message/header/UpnpHeader;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    .line 70
    :cond_3
    sget-object v6, Lorg/teleal/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ignoring known but non-parsable header (value violates the UDA specification?) \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\': "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 70
    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {p0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->addParsedValue(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    goto :goto_1
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    .line 92
    invoke-super {p0, p1, p2}, Lorg/teleal/common/http/Headers;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    .line 104
    invoke-super {p0, p1}, Lorg/teleal/common/http/Headers;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)V
    .locals 1

    .prologue
    .line 130
    .local p1, "type":Lorg/teleal/cling/model/message/header/UpnpHeader$Type;, "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;"
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/teleal/common/http/Headers;->remove(Ljava/lang/Object;)Ljava/util/List;

    .line 131
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    return-void
.end method
