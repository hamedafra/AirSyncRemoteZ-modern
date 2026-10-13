.class public Lorg/teleal/common/util/MimeType;
.super Ljava/lang/Object;
.source "MimeType.java"


# static fields
.field public static final WILDCARD:Ljava/lang/String; = "*"


# instance fields
.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subtype:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "*"

    const-string v1, "*"

    invoke-direct {p0, v0, v1}, Lorg/teleal/common/util/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/common/util/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    const-string p1, "*"

    .end local p1    # "type":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/teleal/common/util/MimeType;->type:Ljava/lang/String;

    .line 42
    if-nez p2, :cond_1

    const-string p2, "*"

    .end local p2    # "subtype":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lorg/teleal/common/util/MimeType;->subtype:Ljava/lang/String;

    .line 43
    if-nez p3, :cond_2

    .line 44
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v3, p0, Lorg/teleal/common/util/MimeType;->parameters:Ljava/util/Map;

    .line 56
    :goto_0
    return-void

    .line 46
    :cond_2
    new-instance v2, Ljava/util/TreeMap;

    new-instance v3, Lorg/teleal/common/util/MimeType$1;

    invoke-direct {v3, p0}, Lorg/teleal/common/util/MimeType$1;-><init>(Lorg/teleal/common/util/MimeType;)V

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 51
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 54
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lorg/teleal/common/util/MimeType;->parameters:Ljava/util/Map;

    goto :goto_0
.end method

.method protected static getEnd(Ljava/lang/String;I)I
    .locals 4
    .param p0, "params"    # Ljava/lang/String;
    .param p1, "start"    # I

    .prologue
    const/4 v3, -0x1

    .line 187
    const/16 v2, 0x3d

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 188
    .local v0, "equals":I
    const/16 v2, 0x3b

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 189
    .local v1, "semicolon":I
    if-ne v0, v3, :cond_1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 192
    .end local v0    # "equals":I
    :cond_0
    :goto_0
    return v0

    .line 190
    .restart local v0    # "equals":I
    :cond_1
    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 191
    :cond_2
    if-eq v1, v3, :cond_0

    .line 192
    if-lt v0, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static readParamsIntoMap(Ljava/util/Map;Ljava/lang/String;I)I
    .locals 10
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 137
    .local v6, "quote":Z
    const/4 v0, 0x0

    .line 139
    .local v0, "backslash":Z
    invoke-static {p1, p2}, Lorg/teleal/common/util/MimeType;->getEnd(Ljava/lang/String;I)I

    move-result v3

    .line 140
    .local v3, "end":I
    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3d

    if-ne v8, v9, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 143
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 144
    .local v1, "buffer":Ljava/lang/StringBuilder;
    move v4, v3

    .line 145
    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 146
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 148
    .local v2, "c":C
    sparse-switch v2, :sswitch_data_0

    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    :sswitch_0
    if-eqz v0, :cond_2

    .line 151
    const/4 v0, 0x0

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 154
    :cond_2
    if-nez v6, :cond_3

    const/4 v6, 0x1

    .line 156
    :goto_2
    goto :goto_1

    .line 154
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 159
    :sswitch_1
    if-eqz v0, :cond_1

    .line 160
    const/4 v0, 0x0

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 166
    :sswitch_2
    if-nez v6, :cond_4

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, "value":Ljava/lang/String;
    invoke-interface {p0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    add-int/lit8 v4, v4, 0x1

    .line 183
    .end local v2    # "c":C
    .end local v4    # "i":I
    :goto_3
    return v4

    .line 171
    .end local v7    # "value":Ljava/lang/String;
    .restart local v2    # "c":C
    .restart local v4    # "i":I
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 181
    .end local v2    # "c":C
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 182
    .restart local v7    # "value":Ljava/lang/String;
    invoke-interface {p0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x3b -> :sswitch_2
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/common/util/MimeType;
    .locals 10
    .param p0, "stringValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 94
    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "String value is null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 96
    :cond_0
    const/4 v2, 0x0

    .line 97
    .local v2, "params":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 98
    .local v4, "semicolonIndex":I
    const/4 v7, -0x1

    if-le v4, v7, :cond_1

    .line 99
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 102
    :cond_1
    const/4 v0, 0x0

    .line 103
    .local v0, "major":Ljava/lang/String;
    const/4 v6, 0x0

    .line 104
    .local v6, "subtype":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "paths":[Ljava/lang/String;
    array-length v7, v3

    if-ge v7, v8, :cond_3

    const-string v7, "*"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 108
    const-string v0, "*"

    .line 109
    const-string v6, "*"

    .line 121
    :cond_2
    :goto_0
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 126
    .local v5, "start":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 127
    invoke-static {v1, v2, v5}, Lorg/teleal/common/util/MimeType;->readParamsIntoMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v5

    goto :goto_1

    .line 111
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "start":I
    :cond_3
    array-length v7, v3

    if-ne v7, v8, :cond_4

    .line 113
    aget-object v7, v3, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 114
    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 116
    :cond_4
    array-length v7, v3

    if-eq v7, v8, :cond_2

    .line 118
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 129
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "start":I
    :cond_5
    new-instance v7, Lorg/teleal/common/util/MimeType;

    invoke-direct {v7, v0, v6, v1}, Lorg/teleal/common/util/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 131
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "start":I
    :goto_2
    return-object v7

    :cond_6
    new-instance v7, Lorg/teleal/common/util/MimeType;

    invoke-direct {v7, v0, v6}, Lorg/teleal/common/util/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    if-ne p0, p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v1

    .line 198
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

    .line 200
    check-cast v0, Lorg/teleal/common/util/MimeType;

    .line 202
    .local v0, "mimeType":Lorg/teleal/common/util/MimeType;
    iget-object v3, p0, Lorg/teleal/common/util/MimeType;->parameters:Ljava/util/Map;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/teleal/common/util/MimeType;->parameters:Ljava/util/Map;

    iget-object v4, v0, Lorg/teleal/common/util/MimeType;->parameters:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lorg/teleal/common/util/MimeType;->parameters:Ljava/util/Map;

    if-nez v3, :cond_4

    .line 203
    :cond_6
    iget-object v3, p0, Lorg/teleal/common/util/MimeType;->subtype:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/common/util/MimeType;->subtype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 204
    :cond_7
    iget-object v3, p0, Lorg/teleal/common/util/MimeType;->type:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/common/util/MimeType;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lorg/teleal/common/util/MimeType;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/teleal/common/util/MimeType;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/teleal/common/util/MimeType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 211
    iget-object v1, p0, Lorg/teleal/common/util/MimeType;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 212
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/common/util/MimeType;->subtype:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 213
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lorg/teleal/common/util/MimeType;->parameters:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/teleal/common/util/MimeType;->parameters:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 214
    return v0

    .line 213
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCompatible(Lorg/teleal/common/util/MimeType;)Z
    .locals 4
    .param p1, "other"    # Lorg/teleal/common/util/MimeType;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 83
    if-nez p1, :cond_1

    move v0, v1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    iget-object v2, p0, Lorg/teleal/common/util/MimeType;->type:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lorg/teleal/common/util/MimeType;->type:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    iget-object v2, p0, Lorg/teleal/common/util/MimeType;->type:Ljava/lang/String;

    iget-object v3, p1, Lorg/teleal/common/util/MimeType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/teleal/common/util/MimeType;->subtype:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lorg/teleal/common/util/MimeType;->subtype:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    :cond_2
    iget-object v2, p0, Lorg/teleal/common/util/MimeType;->type:Ljava/lang/String;

    iget-object v3, p1, Lorg/teleal/common/util/MimeType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/teleal/common/util/MimeType;->subtype:Ljava/lang/String;

    iget-object v3, p1, Lorg/teleal/common/util/MimeType;->subtype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isWildcardSubtype()Z
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/teleal/common/util/MimeType;->getSubtype()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWildcardType()Z
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/teleal/common/util/MimeType;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/teleal/common/util/MimeType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/teleal/common/util/MimeType;->getSubtype()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0}, Lorg/teleal/common/util/MimeType;->getParameters()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lorg/teleal/common/util/MimeType;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 222
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/common/util/MimeType;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 223
    .local v1, "name":Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/teleal/common/util/MimeType;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 226
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
