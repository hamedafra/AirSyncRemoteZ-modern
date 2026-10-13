.class public Lorg/teleal/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;
.super Lorg/teleal/cling/support/model/DIDLObject$Property;
.source "DIDLObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/model/DIDLObject$Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyPersonWithRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/model/DIDLObject$Property",
        "<",
        "Lorg/teleal/cling/support/model/PersonWithRole;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lorg/teleal/cling/support/model/DIDLObject$Property;-><init>()V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "descriptorName"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/PersonWithRole;Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Lorg/teleal/cling/support/model/PersonWithRole;
    .param p2, "descriptorName"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    return-void
.end method


# virtual methods
.method public setOnElement(Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/PersonWithRole;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/PersonWithRole;->setOnElement(Lorg/w3c/dom/Element;)V

    .line 131
    :cond_0
    return-void
.end method
