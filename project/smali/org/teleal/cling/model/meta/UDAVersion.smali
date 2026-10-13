.class public Lorg/teleal/cling/model/meta/UDAVersion;
.super Ljava/lang/Object;
.source "UDAVersion.java"

# interfaces
.implements Lorg/teleal/cling/model/Validatable;


# instance fields
.field private major:I

.field private minor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lorg/teleal/cling/model/meta/UDAVersion;->major:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/teleal/cling/model/meta/UDAVersion;->minor:I

    .line 40
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lorg/teleal/cling/model/meta/UDAVersion;->major:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/teleal/cling/model/meta/UDAVersion;->minor:I

    .line 43
    iput p1, p0, Lorg/teleal/cling/model/meta/UDAVersion;->major:I

    .line 44
    iput p2, p0, Lorg/teleal/cling/model/meta/UDAVersion;->minor:I

    .line 45
    return-void
.end method


# virtual methods
.method public getMajor()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/teleal/cling/model/meta/UDAVersion;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/teleal/cling/model/meta/UDAVersion;->minor:I

    return v0
.end method

.method public validate()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/UDAVersion;->getMajor()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 59
    new-instance v1, Lorg/teleal/cling/model/ValidationError;

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 61
    const-string v3, "major"

    .line 62
    const-string v4, "UDA major spec version must be 1"

    invoke-direct {v1, v2, v3, v4}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/UDAVersion;->getMajor()I

    move-result v1

    if-gez v1, :cond_1

    .line 66
    new-instance v1, Lorg/teleal/cling/model/ValidationError;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 68
    const-string v3, "minor"

    .line 69
    const-string v4, "UDA minor spec version must be equal or greater 0"

    invoke-direct {v1, v2, v3, v4}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_1
    return-object v0
.end method
