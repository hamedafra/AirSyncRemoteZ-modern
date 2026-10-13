.class public Lorg/teleal/cling/model/message/header/TimeoutHeader;
.super Lorg/teleal/cling/model/message/header/UpnpHeader;
.source "TimeoutHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/header/UpnpHeader",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INFINITE_VALUE:Ljava/lang/Integer;

.field public static final PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/message/header/TimeoutHeader;->INFINITE_VALUE:Ljava/lang/Integer;

    .line 33
    const-string v0, "Second-(?:([0-9]+)|infinite)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/message/header/TimeoutHeader;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 36
    const/16 v0, 0x708

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/message/header/TimeoutHeader;->setValue(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "timeoutSeconds"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/message/header/TimeoutHeader;->setValue(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "timeoutSeconds"    # Ljava/lang/Integer;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/header/TimeoutHeader;->setValue(Ljava/lang/Object;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Second-"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/TimeoutHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v2, Lorg/teleal/cling/model/message/header/TimeoutHeader;->INFINITE_VALUE:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "infinite"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/TimeoutHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    goto :goto_0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 49
    sget-object v1, Lorg/teleal/cling/model/message/header/TimeoutHeader;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 50
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t parse timeout seconds integer from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/teleal/cling/model/message/header/TimeoutHeader;->setValue(Ljava/lang/Object;)V

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_1
    sget-object v1, Lorg/teleal/cling/model/message/header/TimeoutHeader;->INFINITE_VALUE:Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/model/message/header/TimeoutHeader;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method
