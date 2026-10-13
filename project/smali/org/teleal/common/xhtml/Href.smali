.class public Lorg/teleal/common/xhtml/Href;
.super Ljava/lang/Object;
.source "Href.java"


# instance fields
.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/teleal/common/xhtml/Href;->uri:Ljava/net/URI;

    .line 30
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/teleal/common/xhtml/Href;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 37
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 38
    :cond_0
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 39
    new-instance v0, Lorg/teleal/common/xhtml/Href;

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/common/xhtml/Href;-><init>(Ljava/net/URI;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    if-ne p0, p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 50
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

    .line 52
    check-cast v0, Lorg/teleal/common/xhtml/Href;

    .line 54
    .local v0, "href":Lorg/teleal/common/xhtml/Href;
    iget-object v3, p0, Lorg/teleal/common/xhtml/Href;->uri:Ljava/net/URI;

    iget-object v4, v0, Lorg/teleal/common/xhtml/Href;->uri:Ljava/net/URI;

    invoke-virtual {v3, v4}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/teleal/common/xhtml/Href;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/teleal/common/xhtml/Href;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/teleal/common/xhtml/Href;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
