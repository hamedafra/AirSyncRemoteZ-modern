.class Lorg/teleal/cling/registry/RegistryItem;
.super Ljava/lang/Object;
.source "RegistryItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private expirationDetails:Lorg/teleal/cling/model/ExpirationDetails;

.field private item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<TK;TI;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/teleal/cling/model/ExpirationDetails;

    invoke-direct {v0}, Lorg/teleal/cling/model/ExpirationDetails;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryItem;->expirationDetails:Lorg/teleal/cling/model/ExpirationDetails;

    .line 34
    iput-object p1, p0, Lorg/teleal/cling/registry/RegistryItem;->key:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .param p3, "maxAgeSeconds"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TI;I)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<TK;TI;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "item":Ljava/lang/Object;, "TI;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/teleal/cling/model/ExpirationDetails;

    invoke-direct {v0}, Lorg/teleal/cling/model/ExpirationDetails;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryItem;->expirationDetails:Lorg/teleal/cling/model/ExpirationDetails;

    .line 38
    iput-object p1, p0, Lorg/teleal/cling/registry/RegistryItem;->key:Ljava/lang/Object;

    .line 39
    iput-object p2, p0, Lorg/teleal/cling/registry/RegistryItem;->item:Ljava/lang/Object;

    .line 40
    new-instance v0, Lorg/teleal/cling/model/ExpirationDetails;

    invoke-direct {v0, p3}, Lorg/teleal/cling/model/ExpirationDetails;-><init>(I)V

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryItem;->expirationDetails:Lorg/teleal/cling/model/ExpirationDetails;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 56
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<TK;TI;>;"
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 61
    :goto_0
    return v1

    .line 57
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 59
    check-cast v0, Lorg/teleal/cling/registry/RegistryItem;

    .line 61
    .local v0, "that":Lorg/teleal/cling/registry/RegistryItem;
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryItem;->key:Ljava/lang/Object;

    iget-object v2, v0, Lorg/teleal/cling/registry/RegistryItem;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getExpirationDetails()Lorg/teleal/cling/model/ExpirationDetails;
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<TK;TI;>;"
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryItem;->expirationDetails:Lorg/teleal/cling/model/ExpirationDetails;

    return-object v0
.end method

.method public getItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<TK;TI;>;"
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryItem;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<TK;TI;>;"
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryItem;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<TK;TI;>;"
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryItem;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<TK;TI;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryItem;->getExpirationDetails()Lorg/teleal/cling/model/ExpirationDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KEY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ITEM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
