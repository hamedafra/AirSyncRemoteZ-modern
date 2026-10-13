.class public Lorg/teleal/common/http/Headers;
.super Ljava/lang/Object;
.source "Headers.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field static final CR:B = 0xdt

.field static final LF:B = 0xat


# instance fields
.field final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .locals 12
    .param p1, "inputStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v11}, Ljava/util/HashMap;-><init>(I)V

    iput-object v8, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    .line 55
    new-instance v3, Lorg/teleal/common/http/Headers;

    invoke-direct {v3}, Lorg/teleal/common/http/Headers;-><init>()V

    .line 56
    .local v3, "headers":Lorg/teleal/common/http/Headers;
    invoke-static {p1}, Lorg/teleal/common/http/Headers;->readLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "line":Ljava/lang/String;
    const/4 v4, 0x0

    .line 58
    .local v4, "lastHeader":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 60
    :cond_0
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 61
    .local v1, "firstChar":C
    if-eqz v4, :cond_3

    if-eq v1, v11, :cond_1

    const/16 v8, 0x9

    if-ne v1, v8, :cond_3

    .line 62
    :cond_1
    invoke-virtual {v3, v4}, Lorg/teleal/common/http/Headers;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .line 64
    .local v5, "lastPos":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "newString":Ljava/lang/String;
    invoke-interface {v0, v5, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v0    # "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "lastPos":I
    .end local v7    # "newString":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lorg/teleal/common/http/Headers;->readLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 75
    .end local v1    # "firstChar":C
    :cond_2
    invoke-virtual {p0, v3}, Lorg/teleal/common/http/Headers;->putAll(Ljava/util/Map;)V

    .line 76
    return-void

    .line 67
    .restart local v1    # "firstChar":C
    :cond_3
    invoke-virtual {p0, v6}, Lorg/teleal/common/http/Headers;->splitHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "header":[Ljava/lang/String;
    aget-object v8, v2, v10

    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v3, v8, v9}, Lorg/teleal/common/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    aget-object v4, v2, v10

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
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
    .line 50
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    .line 51
    invoke-virtual {p0, p1}, Lorg/teleal/common/http/Headers;->putAll(Ljava/util/Map;)V

    .line 52
    return-void
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 159
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 172
    .end local p1    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 160
    .restart local p1    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 164
    .local v0, "b":[C
    aget-char v2, v0, v4

    const/16 v3, 0x61

    if-lt v2, v3, :cond_2

    aget-char v2, v0, v4

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_2

    .line 165
    aget-char v2, v0, v4

    add-int/lit8 v2, v2, -0x20

    int-to-char v2, v2

    aput-char v2, v0, v4

    .line 167
    :cond_2
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 168
    aget-char v2, v0, v1

    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    aget-char v2, v0, v1

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_3

    .line 169
    aget-char v2, v0, v1

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 167
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_4
    new-instance p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/String;
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static readLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "is"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/16 v4, 0xa

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 178
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .local v0, "nextByte":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 179
    int-to-char v1, v0

    .line 180
    .local v1, "nextChar":C
    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    .line 181
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    int-to-char v0, v3

    .line 182
    if-ne v0, v4, :cond_2

    .line 191
    .end local v1    # "nextChar":C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 185
    .restart local v1    # "nextChar":C
    :cond_1
    if-eq v1, v4, :cond_0

    .line 189
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lorg/teleal/common/http/Headers;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "k":Ljava/lang/String;
    iget-object v2, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 145
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 146
    new-instance v1, Ljava/util/LinkedList;

    .end local v1    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 147
    .restart local v1    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 115
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/teleal/common/http/Headers;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 130
    iget-object v0, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected findEndOfString(Ljava/lang/String;)I
    .locals 2
    .param p1, "sb"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "result":I
    :goto_0
    if-lez v0, :cond_0

    .line 242
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    :cond_0
    return v0

    .line 241
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected findNonWhitespace(Ljava/lang/String;I)I
    .locals 2
    .param p1, "sb"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 231
    move v0, p2

    .local v0, "result":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    :cond_0
    return v0

    .line 231
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/teleal/common/http/Headers;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
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
    .line 95
    iget-object v0, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/teleal/common/http/Headers;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v1, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/teleal/common/http/Headers;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 139
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/teleal/common/http/Headers;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
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
    .line 99
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/teleal/common/http/Headers;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 109
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;+Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lorg/teleal/common/http/Headers;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 111
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;+Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/teleal/common/http/Headers;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
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
    iget-object v0, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/teleal/common/http/Headers;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 154
    .local v0, "l":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {p0, p1, v0}, Lorg/teleal/common/http/Headers;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 156
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected splitHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "sb"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x3a

    const/4 v8, 0x0

    .line 201
    invoke-virtual {p0, p1, v8}, Lorg/teleal/common/http/Headers;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v3

    .line 202
    .local v3, "nameStart":I
    move v2, v3

    .local v2, "nameEnd":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 203
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 204
    .local v0, "ch":C
    if-eq v0, v7, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 209
    .end local v0    # "ch":C
    :cond_0
    move v1, v2

    .local v1, "colonEnd":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 210
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_3

    .line 211
    add-int/lit8 v1, v1, 0x1

    .line 216
    :cond_1
    invoke-virtual {p0, p1, v1}, Lorg/teleal/common/http/Headers;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v5

    .line 217
    .local v5, "valueStart":I
    invoke-virtual {p0, p1}, Lorg/teleal/common/http/Headers;->findEndOfString(Ljava/lang/String;)I

    move-result v4

    .line 220
    .local v4, "valueEnd":I
    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v5, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v4, :cond_4

    if-ge v5, v4, :cond_4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_2
    aput-object v6, v7, v8

    return-object v7

    .line 202
    .end local v1    # "colonEnd":I
    .end local v4    # "valueEnd":I
    .end local v5    # "valueStart":I
    .restart local v0    # "ch":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "ch":C
    .restart local v1    # "colonEnd":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    .restart local v4    # "valueEnd":I
    .restart local v5    # "valueStart":I
    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v2, "headerString":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/teleal/common/http/Headers;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 253
    .local v0, "headerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v1, "headerLine":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 258
    .local v5, "v":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 260
    .end local v5    # "v":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 263
    .end local v0    # "headerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "headerLine":Ljava/lang/StringBuilder;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/teleal/common/http/Headers;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
