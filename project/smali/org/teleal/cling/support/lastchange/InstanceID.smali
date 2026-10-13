.class public Lorg/teleal/cling/support/lastchange/InstanceID;
.super Ljava/lang/Object;
.source "InstanceID.java"


# instance fields
.field protected id:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

.field protected values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/lastchange/EventedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 1
    .param p1, "id"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/support/lastchange/InstanceID;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/util/List;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/util/List;)V
    .locals 1
    .param p1, "id"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/lastchange/EventedValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/lastchange/EventedValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/lastchange/InstanceID;->values:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lorg/teleal/cling/support/lastchange/InstanceID;->id:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 39
    iput-object p2, p0, Lorg/teleal/cling/support/lastchange/InstanceID;->values:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public getId()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/teleal/cling/support/lastchange/InstanceID;->id:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/lastchange/EventedValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/teleal/cling/support/lastchange/InstanceID;->values:Ljava/util/List;

    return-object v0
.end method
