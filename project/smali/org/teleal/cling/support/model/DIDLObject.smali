.class public abstract Lorg/teleal/cling/support/model/DIDLObject;
.super Ljava/lang/Object;
.source "DIDLObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/support/model/DIDLObject$Class;,
        Lorg/teleal/cling/support/model/DIDLObject$Property;
    }
.end annotation


# instance fields
.field protected clazz:Lorg/teleal/cling/support/model/DIDLObject$Class;

.field protected creator:Ljava/lang/String;

.field protected descMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DescMeta;",
            ">;"
        }
    .end annotation
.end field

.field protected id:Ljava/lang/String;

.field protected parentID:Ljava/lang/String;

.field protected properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Property;",
            ">;"
        }
    .end annotation
.end field

.field protected resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/Res;",
            ">;"
        }
    .end annotation
.end field

.field protected restricted:Z

.field protected title:Ljava/lang/String;

.field protected writeStatus:Lorg/teleal/cling/support/model/WriteStatus;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->restricted:Z

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->resources:Ljava/util/List;

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->properties:Ljava/util/List;

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->descMetadata:Ljava/util/List;

    .line 602
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "restricted"    # Z
    .param p6, "writeStatus"    # Lorg/teleal/cling/support/model/WriteStatus;
    .param p7, "clazz"    # Lorg/teleal/cling/support/model/DIDLObject$Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/teleal/cling/support/model/WriteStatus;",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/Res;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Property;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DescMeta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p8, "resources":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/Res;>;"
    .local p9, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Property;>;"
    .local p10, "descMetadata":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DescMeta;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->restricted:Z

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->resources:Ljava/util/List;

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->properties:Ljava/util/List;

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->descMetadata:Ljava/util/List;

    .line 619
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    .line 620
    iput-object p2, p0, Lorg/teleal/cling/support/model/DIDLObject;->parentID:Ljava/lang/String;

    .line 621
    iput-object p3, p0, Lorg/teleal/cling/support/model/DIDLObject;->title:Ljava/lang/String;

    .line 622
    iput-object p4, p0, Lorg/teleal/cling/support/model/DIDLObject;->creator:Ljava/lang/String;

    .line 623
    iput-boolean p5, p0, Lorg/teleal/cling/support/model/DIDLObject;->restricted:Z

    .line 624
    iput-object p6, p0, Lorg/teleal/cling/support/model/DIDLObject;->writeStatus:Lorg/teleal/cling/support/model/WriteStatus;

    .line 625
    iput-object p7, p0, Lorg/teleal/cling/support/model/DIDLObject;->clazz:Lorg/teleal/cling/support/model/DIDLObject$Class;

    .line 626
    iput-object p8, p0, Lorg/teleal/cling/support/model/DIDLObject;->resources:Ljava/util/List;

    .line 627
    iput-object p9, p0, Lorg/teleal/cling/support/model/DIDLObject;->properties:Ljava/util/List;

    .line 628
    iput-object p10, p0, Lorg/teleal/cling/support/model/DIDLObject;->descMetadata:Ljava/util/List;

    .line 629
    return-void
.end method

.method protected constructor <init>(Lorg/teleal/cling/support/model/DIDLObject;)V
    .locals 11
    .param p1, "other"    # Lorg/teleal/cling/support/model/DIDLObject;

    .prologue
    .line 605
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v1

    .line 606
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getParentID()Ljava/lang/String;

    move-result-object v2

    .line 607
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 608
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getCreator()Ljava/lang/String;

    move-result-object v4

    .line 609
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->isRestricted()Z

    move-result v5

    .line 610
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getWriteStatus()Lorg/teleal/cling/support/model/WriteStatus;

    move-result-object v6

    .line 611
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getClazz()Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-result-object v7

    .line 612
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getResources()Ljava/util/List;

    move-result-object v8

    .line 613
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v9

    .line 614
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getDescMetadata()Ljava/util/List;

    move-result-object v10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/teleal/cling/support/model/DIDLObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 616
    return-void
.end method


# virtual methods
.method public addDescMetadata(Lorg/teleal/cling/support/model/DescMeta;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 1
    .param p1, "descMetadata"    # Lorg/teleal/cling/support/model/DescMeta;

    .prologue
    .line 825
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject;->getDescMetadata()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    return-object p0
.end method

.method public addProperties([Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 3
    .param p1, "properties"    # [Lorg/teleal/cling/support/model/DIDLObject$Property;

    .prologue
    .line 746
    if-nez p1, :cond_1

    .line 750
    :cond_0
    return-object p0

    .line 747
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 748
    .local v0, "property":Lorg/teleal/cling/support/model/DIDLObject$Property;
    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 747
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 1
    .param p1, "property"    # Lorg/teleal/cling/support/model/DIDLObject$Property;

    .prologue
    .line 722
    if-nez p1, :cond_0

    .line 724
    :goto_0
    return-object p0

    .line 723
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addResource(Lorg/teleal/cling/support/model/Res;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 1
    .param p1, "resource"    # Lorg/teleal/cling/support/model/Res;

    .prologue
    .line 699
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 831
    if-ne p0, p1, :cond_1

    .line 838
    :cond_0
    :goto_0
    return v1

    .line 832
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

    .line 834
    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    .line 836
    .local v0, "that":Lorg/teleal/cling/support/model/DIDLObject;
    iget-object v3, p0, Lorg/teleal/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getClazz()Lorg/teleal/cling/support/model/DIDLObject$Class;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->clazz:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getDescMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DescMeta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 817
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->descMetadata:Ljava/util/List;

    return-object v0
.end method

.method public getFirstProperty(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject$Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/model/DIDLObject$Property",
            "<TV;>;>;)",
            "Lorg/teleal/cling/support/model/DIDLObject$Property",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 771
    .local p1, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 774
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 771
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject$Property;

    .line 772
    .local v0, "property":Lorg/teleal/cling/support/model/DIDLObject$Property;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/model/DIDLObject$Property",
            "<TV;>;>;)TV;"
        }
    .end annotation

    .prologue
    .line 804
    .local p1, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->getFirstProperty(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject$Property;

    move-result-object v0

    .line 805
    .local v0, "prop":Lorg/teleal/cling/support/model/DIDLObject$Property;, "Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getFirstResource()Lorg/teleal/cling/support/model/Res;
    .locals 2

    .prologue
    .line 686
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject;->getResources()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Res;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastProperty(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject$Property;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/model/DIDLObject$Property",
            "<TV;>;>;)",
            "Lorg/teleal/cling/support/model/DIDLObject$Property",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 778
    .local p1, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;>;"
    const/4 v0, 0x0

    .line 779
    .local v0, "found":Lorg/teleal/cling/support/model/DIDLObject$Property;
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 782
    return-object v0

    .line 779
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/DIDLObject$Property;

    .line 780
    .local v1, "property":Lorg/teleal/cling/support/model/DIDLObject$Property;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public getParentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->parentID:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->properties:Ljava/util/List;

    return-object v0
.end method

.method public getProperties(Ljava/lang/Class;)[Lorg/teleal/cling/support/model/DIDLObject$Property;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/model/DIDLObject$Property",
            "<TV;>;>;)[",
            "Lorg/teleal/cling/support/model/DIDLObject$Property",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 786
    .local p1, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 791
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/teleal/cling/support/model/DIDLObject$Property;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/teleal/cling/support/model/DIDLObject$Property;

    return-object v2

    .line 787
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/DIDLObject$Property;

    .line 788
    .local v1, "property":Lorg/teleal/cling/support/model/DIDLObject$Property;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 789
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPropertiesByNamespace(Ljava/lang/Class;)[Lorg/teleal/cling/support/model/DIDLObject$Property;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/model/DIDLObject$Property$NAMESPACE;",
            ">;)[",
            "Lorg/teleal/cling/support/model/DIDLObject$Property",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 795
    .local p1, "namespace":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/support/model/DIDLObject$Property$NAMESPACE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 796
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 800
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/teleal/cling/support/model/DIDLObject$Property;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/teleal/cling/support/model/DIDLObject$Property;

    return-object v2

    .line 796
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/DIDLObject$Property;

    .line 797
    .local v1, "property":Lorg/teleal/cling/support/model/DIDLObject$Property;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 798
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPropertyValues(Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/model/DIDLObject$Property",
            "<TV;>;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 809
    .local p1, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/support/model/DIDLObject$Property<TV;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->getProperties(Ljava/lang/Class;)[Lorg/teleal/cling/support/model/DIDLObject$Property;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 813
    return-object v0

    .line 810
    :cond_0
    aget-object v1, v3, v2

    .line 811
    .local v1, "property":Lorg/teleal/cling/support/model/DIDLObject$Property;
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/Res;",
            ">;"
        }
    .end annotation

    .prologue
    .line 690
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->resources:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWriteStatus()Lorg/teleal/cling/support/model/WriteStatus;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->writeStatus:Lorg/teleal/cling/support/model/WriteStatus;

    return-object v0
.end method

.method public hasProperty(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/model/DIDLObject$Property;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 764
    .local p1, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/support/model/DIDLObject$Property;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 767
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 764
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject$Property;

    .line 765
    .local v0, "property":Lorg/teleal/cling/support/model/DIDLObject$Property;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isRestricted()Z
    .locals 1

    .prologue
    .line 668
    iget-boolean v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->restricted:Z

    return v0
.end method

.method public removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/model/DIDLObject$Property;",
            ">;)",
            "Lorg/teleal/cling/support/model/DIDLObject;"
        }
    .end annotation

    .prologue
    .line 754
    .local p1, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/support/model/DIDLObject$Property;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 755
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/support/model/DIDLObject$Property;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 760
    return-object p0

    .line 756
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/DIDLObject$Property;

    .line 757
    .local v1, "p":Lorg/teleal/cling/support/model/DIDLObject$Property;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 758
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 4
    .param p1, "property"    # Lorg/teleal/cling/support/model/DIDLObject$Property;

    .prologue
    .line 728
    if-nez p1, :cond_0

    .line 736
    :goto_0
    return-object p0

    .line 729
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 730
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/support/model/DIDLObject$Property;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 735
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    goto :goto_0

    .line 731
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/DIDLObject$Property;

    .line 732
    .local v1, "p":Lorg/teleal/cling/support/model/DIDLObject$Property;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 733
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method public replaceProperties(Ljava/lang/Class;[Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 1
    .param p2, "properties"    # [Lorg/teleal/cling/support/model/DIDLObject$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/model/DIDLObject$Property;",
            ">;[",
            "Lorg/teleal/cling/support/model/DIDLObject$Property;",
            ")",
            "Lorg/teleal/cling/support/model/DIDLObject;"
        }
    .end annotation

    .prologue
    .line 740
    .local p1, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/support/model/DIDLObject$Property;>;"
    array-length v0, p2

    if-nez v0, :cond_0

    .line 742
    .end local p0    # "this":Lorg/teleal/cling/support/model/DIDLObject;
    :goto_0
    return-object p0

    .line 741
    .restart local p0    # "this":Lorg/teleal/cling/support/model/DIDLObject;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 742
    invoke-virtual {p0, p2}, Lorg/teleal/cling/support/model/DIDLObject;->addProperties([Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    move-result-object p0

    goto :goto_0
.end method

.method public setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 0
    .param p1, "clazz"    # Lorg/teleal/cling/support/model/DIDLObject$Class;

    .prologue
    .line 708
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->clazz:Lorg/teleal/cling/support/model/DIDLObject$Class;

    .line 709
    return-object p0
.end method

.method public setCreator(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 0
    .param p1, "creator"    # Ljava/lang/String;

    .prologue
    .line 663
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->creator:Ljava/lang/String;

    .line 664
    return-object p0
.end method

.method public setDescMetadata(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DescMeta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 821
    .local p1, "descMetadata":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DescMeta;>;"
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->descMetadata:Ljava/util/List;

    .line 822
    return-void
.end method

.method public setId(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 636
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    .line 637
    return-object p0
.end method

.method public setParentID(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 0
    .param p1, "parentID"    # Ljava/lang/String;

    .prologue
    .line 645
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->parentID:Ljava/lang/String;

    .line 646
    return-object p0
.end method

.method public setProperties(Ljava/util/List;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Property;",
            ">;)",
            "Lorg/teleal/cling/support/model/DIDLObject;"
        }
    .end annotation

    .prologue
    .line 717
    .local p1, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Property;>;"
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->properties:Ljava/util/List;

    .line 718
    return-object p0
.end method

.method public setResources(Ljava/util/List;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/Res;",
            ">;)",
            "Lorg/teleal/cling/support/model/DIDLObject;"
        }
    .end annotation

    .prologue
    .line 694
    .local p1, "resources":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/Res;>;"
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->resources:Ljava/util/List;

    .line 695
    return-object p0
.end method

.method public setRestricted(Z)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 0
    .param p1, "restricted"    # Z

    .prologue
    .line 672
    iput-boolean p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->restricted:Z

    .line 673
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 654
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->title:Ljava/lang/String;

    .line 655
    return-object p0
.end method

.method public setWriteStatus(Lorg/teleal/cling/support/model/WriteStatus;)Lorg/teleal/cling/support/model/DIDLObject;
    .locals 0
    .param p1, "writeStatus"    # Lorg/teleal/cling/support/model/WriteStatus;

    .prologue
    .line 681
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->writeStatus:Lorg/teleal/cling/support/model/WriteStatus;

    .line 682
    return-object p0
.end method
