.class public abstract Lorg/teleal/cling/support/model/DIDLObject$Property;
.super Ljava/lang/Object;
.source "DIDLObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/model/DIDLObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/support/model/DIDLObject$Property$DC;,
        Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA;,
        Lorg/teleal/cling/support/model/DIDLObject$Property$NAMESPACE;,
        Lorg/teleal/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;,
        Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Property",
            "<",
            "Lorg/teleal/cling/support/model/DIDLAttribute;",
            ">;>;"
        }
    .end annotation
.end field

.field private final descriptorName:Ljava/lang/String;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;"
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p2, "descriptorName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject$Property;->attributes:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject$Property;->value:Ljava/lang/Object;

    .line 52
    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "descriptorName":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lorg/teleal/cling/support/model/DIDLObject$Property;->descriptorName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p2, "descriptorName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Property",
            "<",
            "Lorg/teleal/cling/support/model/DIDLAttribute;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p3, "attributes":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Property<Lorg/teleal/cling/support/model/DIDLAttribute;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject$Property;->attributes:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject$Property;->value:Ljava/lang/Object;

    .line 57
    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "descriptorName":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lorg/teleal/cling/support/model/DIDLObject$Property;->descriptorName:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject$Property;->attributes:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "descriptorName"    # Ljava/lang/String;

    .prologue
    .line 47
    .local p0, "this":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public addAttribute(Lorg/teleal/cling/support/model/DIDLObject$Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/support/model/DIDLObject$Property",
            "<",
            "Lorg/teleal/cling/support/model/DIDLAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;"
    .local p1, "attr":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<Lorg/teleal/cling/support/model/DIDLAttribute;>;"
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject$Property;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject$Property;
    .locals 3
    .param p1, "descriptorName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/teleal/cling/support/model/DIDLObject$Property",
            "<",
            "Lorg/teleal/cling/support/model/DIDLAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;"
    iget-object v1, p0, Lorg/teleal/cling/support/model/DIDLObject$Property;->attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 101
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject$Property;

    .line 102
    .local v0, "attr":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<Lorg/teleal/cling/support/model/DIDLAttribute;>;"
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getDescriptorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;"
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject$Property;->descriptorName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;"
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject$Property;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 3
    .param p1, "descriptorName"    # Ljava/lang/String;

    .prologue
    .line 92
    .local p0, "this":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;"
    iget-object v1, p0, Lorg/teleal/cling/support/model/DIDLObject$Property;->attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject$Property;

    .line 93
    .local v0, "attr":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<Lorg/teleal/cling/support/model/DIDLAttribute;>;"
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;->removeAttribute(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    goto :goto_0
.end method

.method public removeAttribute(Lorg/teleal/cling/support/model/DIDLObject$Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/support/model/DIDLObject$Property",
            "<",
            "Lorg/teleal/cling/support/model/DIDLAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;"
    .local p1, "attr":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<Lorg/teleal/cling/support/model/DIDLAttribute;>;"
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject$Property;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public setOnElement(Lorg/w3c/dom/Element;)V
    .locals 5
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 74
    .local p0, "this":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject$Property;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lorg/teleal/cling/support/model/DIDLObject$Property;->attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    return-void

    .line 75
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject$Property;

    .line 77
    .local v0, "attr":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<Lorg/teleal/cling/support/model/DIDLAttribute;>;"
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/DIDLAttribute;

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/DIDLAttribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/DIDLAttribute;

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/DIDLAttribute;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/DIDLAttribute;

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/DIDLAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-interface {p1, v3, v4, v1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject$Property;->value:Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
