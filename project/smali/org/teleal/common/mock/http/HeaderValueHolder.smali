.class Lorg/teleal/common/mock/http/HeaderValueHolder;
.super Ljava/lang/Object;
.source "HeaderValueHolder.java"


# instance fields
.field private final values:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/mock/http/HeaderValueHolder;->values:Ljava/util/List;

    return-void
.end method

.method public static getByName(Ljava/util/Map;Ljava/lang/String;)Lorg/teleal/common/mock/http/HeaderValueHolder;
    .locals 3
    .param p0, "headers"    # Ljava/util/Map;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, "headerName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/common/mock/http/HeaderValueHolder;

    .line 91
    .end local v0    # "headerName":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .param p0, "source"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 96
    instance-of v4, p0, [Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 98
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "source":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    .line 119
    .local v1, "length":I
    :goto_0
    return-object p0

    .line 100
    .end local v1    # "length":I
    .restart local p0    # "source":Ljava/lang/Object;
    :cond_0
    if-nez p0, :cond_1

    .line 102
    new-array p0, v5, [Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_2

    .line 106
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Source is not an array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    :cond_2
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 109
    .restart local v1    # "length":I
    if-nez v1, :cond_3

    .line 111
    new-array p0, v5, [Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_3
    invoke-static {p0, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 114
    .local v3, "wrapperType":Ljava/lang/Class;
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 115
    .local v2, "newArray":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 117
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object p0, v2

    .line 119
    goto :goto_0
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/teleal/common/mock/http/HeaderValueHolder;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public addValueArray(Ljava/lang/Object;)V
    .locals 3
    .param p1, "values"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-static {p1}, Lorg/teleal/common/mock/http/HeaderValueHolder;->toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 59
    .local v0, "arr":[Ljava/lang/Object;
    iget-object v1, p0, Lorg/teleal/common/mock/http/HeaderValueHolder;->values:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    return-void
.end method

.method public addValues(Ljava/util/Collection;)V
    .locals 1
    .param p1, "values"    # Ljava/util/Collection;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/teleal/common/mock/http/HeaderValueHolder;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/teleal/common/mock/http/HeaderValueHolder;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/teleal/common/mock/http/HeaderValueHolder;->values:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValues()Ljava/util/List;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/teleal/common/mock/http/HeaderValueHolder;->values:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/teleal/common/mock/http/HeaderValueHolder;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    iget-object v0, p0, Lorg/teleal/common/mock/http/HeaderValueHolder;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method
