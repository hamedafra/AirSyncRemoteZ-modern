.class public Lorg/teleal/cling/support/model/PersonWithRole;
.super Lorg/teleal/cling/support/model/Person;
.source "PersonWithRole.java"


# instance fields
.field private role:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "role"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lorg/teleal/cling/support/model/PersonWithRole;->role:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/teleal/cling/support/model/PersonWithRole;->role:Ljava/lang/String;

    return-object v0
.end method

.method public setOnElement(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PersonWithRole;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PersonWithRole;->getRole()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/PersonWithRole;->getRole()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "r":Ljava/lang/String;
    :goto_0
    const-string v1, "role"

    invoke-interface {p1, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void

    .line 44
    .end local v0    # "r":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
