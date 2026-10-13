.class public Lorg/teleal/cling/support/model/DIDLAttribute;
.super Ljava/lang/Object;
.source "DIDLAttribute.java"


# instance fields
.field private namespaceURI:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLAttribute;->namespaceURI:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lorg/teleal/cling/support/model/DIDLAttribute;->prefix:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lorg/teleal/cling/support/model/DIDLAttribute;->value:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLAttribute;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLAttribute;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLAttribute;->value:Ljava/lang/String;

    return-object v0
.end method
