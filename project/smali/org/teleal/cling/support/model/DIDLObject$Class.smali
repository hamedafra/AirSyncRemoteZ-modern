.class public Lorg/teleal/cling/support/model/DIDLObject$Class;
.super Ljava/lang/Object;
.source "DIDLObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/model/DIDLObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Class"
.end annotation


# instance fields
.field protected friendlyName:Ljava/lang/String;

.field protected includeDerived:Z

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject$Class;->value:Ljava/lang/String;

    .line 543
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "friendlyName"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject$Class;->value:Ljava/lang/String;

    .line 547
    iput-object p2, p0, Lorg/teleal/cling/support/model/DIDLObject$Class;->friendlyName:Ljava/lang/String;

    .line 548
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "friendlyName"    # Ljava/lang/String;
    .param p3, "includeDerived"    # Z

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject$Class;->value:Ljava/lang/String;

    .line 552
    iput-object p2, p0, Lorg/teleal/cling/support/model/DIDLObject$Class;->friendlyName:Ljava/lang/String;

    .line 553
    iput-boolean p3, p0, Lorg/teleal/cling/support/model/DIDLObject$Class;->includeDerived:Z

    .line 554
    return-void
.end method


# virtual methods
.method public equals(Lorg/teleal/cling/support/model/DIDLObject;)Z
    .locals 2
    .param p1, "instance"    # Lorg/teleal/cling/support/model/DIDLObject;

    .prologue
    .line 581
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getClazz()Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject$Class;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject$Class;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isIncludeDerived()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lorg/teleal/cling/support/model/DIDLObject$Class;->includeDerived:Z

    return v0
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "friendlyName"    # Ljava/lang/String;

    .prologue
    .line 569
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject$Class;->friendlyName:Ljava/lang/String;

    .line 570
    return-void
.end method

.method public setIncludeDerived(Z)V
    .locals 0
    .param p1, "includeDerived"    # Z

    .prologue
    .line 577
    iput-boolean p1, p0, Lorg/teleal/cling/support/model/DIDLObject$Class;->includeDerived:Z

    .line 578
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 561
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject$Class;->value:Ljava/lang/String;

    .line 562
    return-void
.end method
