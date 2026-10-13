.class public Lorg/teleal/cling/support/messagebox/model/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"

# interfaces
.implements Lorg/teleal/cling/support/messagebox/model/ElementAppender;


# instance fields
.field private final date:Ljava/lang/String;

.field private final time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lorg/teleal/cling/support/messagebox/model/DateTime;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/teleal/cling/support/messagebox/model/DateTime;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/teleal/cling/support/messagebox/model/DateTime;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/teleal/cling/support/messagebox/model/DateTime;->date:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lorg/teleal/cling/support/messagebox/model/DateTime;->time:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static getCurrentDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "fmt":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "fmt":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public appendMessageElements(Lorg/teleal/cling/support/messagebox/parser/MessageElement;)V
    .locals 2
    .param p1, "parent"    # Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    .prologue
    .line 51
    const-string v0, "Date"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/DateTime;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    .line 52
    const-string v0, "Time"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/DateTime;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    .line 53
    return-void
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/DateTime;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/DateTime;->time:Ljava/lang/String;

    return-object v0
.end method
