.class public Lorg/teleal/cling/model/message/header/MANHeader;
.super Lorg/teleal/cling/model/message/header/UpnpHeader;
.source "MANHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/header/UpnpHeader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAMESPACE_PATTERN:Ljava/util/regex/Pattern;

.field public static final PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public namespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "\"(.+?)\"(;.+?)??"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/message/header/MANHeader;->PATTERN:Ljava/util/regex/Pattern;

    .line 29
    const-string v0, ";\\s?ns\\s?=\\s?([0-9]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/message/header/MANHeader;->NAMESPACE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/header/MANHeader;->setValue(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/header/MANHeader;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lorg/teleal/cling/model/message/header/MANHeader;->namespace:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/teleal/cling/model/message/header/MANHeader;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/MANHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 70
    :goto_0
    return-object v1

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/MANHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/MANHeader;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "; ns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/MANHeader;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/teleal/cling/model/message/header/MANHeader;->namespace:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 47
    sget-object v2, Lorg/teleal/cling/model/message/header/MANHeader;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 48
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/teleal/cling/model/message/header/MANHeader;->setValue(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 52
    sget-object v2, Lorg/teleal/cling/model/message/header/MANHeader;->NAMESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 53
    .local v1, "nsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/teleal/cling/model/message/header/MANHeader;->setNamespace(Ljava/lang/String;)V

    .line 63
    .end local v1    # "nsMatcher":Ljava/util/regex/Matcher;
    :cond_0
    return-void

    .line 56
    .restart local v1    # "nsMatcher":Ljava/util/regex/Matcher;
    :cond_1
    new-instance v2, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid namespace in MAN header value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    .end local v1    # "nsMatcher":Ljava/util/regex/Matcher;
    :cond_2
    new-instance v2, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid MAN header value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
