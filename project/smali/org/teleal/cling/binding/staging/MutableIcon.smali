.class public Lorg/teleal/cling/binding/staging/MutableIcon;
.super Ljava/lang/Object;
.source "MutableIcon.java"


# instance fields
.field public depth:I

.field public height:I

.field public mimeType:Ljava/lang/String;

.field public uri:Ljava/net/URI;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/teleal/cling/model/meta/Icon;
    .locals 6

    .prologue
    .line 36
    new-instance v0, Lorg/teleal/cling/model/meta/Icon;

    iget-object v1, p0, Lorg/teleal/cling/binding/staging/MutableIcon;->mimeType:Ljava/lang/String;

    iget v2, p0, Lorg/teleal/cling/binding/staging/MutableIcon;->width:I

    iget v3, p0, Lorg/teleal/cling/binding/staging/MutableIcon;->height:I

    iget v4, p0, Lorg/teleal/cling/binding/staging/MutableIcon;->depth:I

    iget-object v5, p0, Lorg/teleal/cling/binding/staging/MutableIcon;->uri:Ljava/net/URI;

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/net/URI;)V

    return-object v0
.end method
