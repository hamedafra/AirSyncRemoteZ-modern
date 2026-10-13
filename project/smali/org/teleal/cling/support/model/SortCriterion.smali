.class public Lorg/teleal/cling/support/model/SortCriterion;
.super Ljava/lang/Object;
.source "SortCriterion.java"


# instance fields
.field protected final ascending:Z

.field protected final propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "criterion"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/teleal/cling/support/model/SortCriterion;-><init>(ZLjava/lang/String;)V

    .line 38
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing sort prefix +/- on criterion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "ascending"    # Z
    .param p2, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lorg/teleal/cling/support/model/SortCriterion;->ascending:Z

    .line 33
    iput-object p2, p0, Lorg/teleal/cling/support/model/SortCriterion;->propertyName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static toString([Lorg/teleal/cling/support/model/SortCriterion;)Ljava/lang/String;
    .locals 6
    .param p0, "criteria"    # [Lorg/teleal/cling/support/model/SortCriterion;

    .prologue
    .line 61
    if-nez p0, :cond_0

    const-string v2, ""

    .line 67
    :goto_0
    return-object v2

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_2

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 67
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 63
    :cond_2
    aget-object v1, p0, v2

    .line 64
    .local v1, "sortCriterion":Lorg/teleal/cling/support/model/SortCriterion;
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/SortCriterion;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)[Lorg/teleal/cling/support/model/SortCriterion;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 51
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-array v3, v3, [Lorg/teleal/cling/support/model/SortCriterion;

    .line 57
    :goto_0
    return-object v3

    .line 52
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/SortCriterion;>;"
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "criteria":[Ljava/lang/String;
    array-length v4, v0

    :goto_1
    if-lt v3, v4, :cond_2

    .line 57
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/teleal/cling/support/model/SortCriterion;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/teleal/cling/support/model/SortCriterion;

    goto :goto_0

    .line 54
    :cond_2
    aget-object v1, v0, v3

    .line 55
    .local v1, "criterion":Ljava/lang/String;
    new-instance v5, Lorg/teleal/cling/support/model/SortCriterion;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/support/model/SortCriterion;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/teleal/cling/support/model/SortCriterion;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public isAscending()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/teleal/cling/support/model/SortCriterion;->ascending:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lorg/teleal/cling/support/model/SortCriterion;->ascending:Z

    if-eqz v1, :cond_0

    const-string v1, "+"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lorg/teleal/cling/support/model/SortCriterion;->propertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 73
    :cond_0
    const-string v1, "-"

    goto :goto_0
.end method
