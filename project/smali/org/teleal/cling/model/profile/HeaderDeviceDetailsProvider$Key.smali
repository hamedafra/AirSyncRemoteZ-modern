.class public Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;
.super Ljava/lang/Object;
.source "HeaderDeviceDetailsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field final headerName:Ljava/lang/String;

.field final pattern:Ljava/util/regex/Pattern;

.field final valuePattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "valuePattern"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;->headerName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;->valuePattern:Ljava/lang/String;

    .line 51
    const/4 v0, 0x2

    invoke-static {p2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;->pattern:Ljava/util/regex/Pattern;

    .line 52
    return-void
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public getValuePattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;->valuePattern:Ljava/lang/String;

    return-object v0
.end method

.method public isValuePatternMatch(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
