.class public Lorg/teleal/cling/model/types/DLNACaps;
.super Ljava/lang/Object;
.source "DLNACaps.java"


# instance fields
.field final caps:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "caps"    # [Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/teleal/cling/model/types/DLNACaps;->caps:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/DLNACaps;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 42
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Lorg/teleal/cling/model/types/DLNACaps;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/teleal/cling/model/types/DLNACaps;-><init>([Ljava/lang/String;)V

    .line 48
    :goto_0
    return-object v3

    .line 43
    :cond_1
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "caps":[Ljava/lang/String;
    array-length v3, v0

    new-array v2, v3, [Ljava/lang/String;

    .line 45
    .local v2, "trimmed":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_2

    .line 48
    new-instance v3, Lorg/teleal/cling/model/types/DLNACaps;

    invoke-direct {v3, v2}, Lorg/teleal/cling/model/types/DLNACaps;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 54
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

    .line 56
    check-cast v0, Lorg/teleal/cling/model/types/DLNACaps;

    .line 58
    .local v0, "dlnaCaps":Lorg/teleal/cling/model/types/DLNACaps;
    iget-object v3, p0, Lorg/teleal/cling/model/types/DLNACaps;->caps:[Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/model/types/DLNACaps;->caps:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getCaps()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/teleal/cling/model/types/DLNACaps;->caps:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/teleal/cling/model/types/DLNACaps;->caps:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/teleal/cling/model/types/DLNACaps;->getCaps()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
