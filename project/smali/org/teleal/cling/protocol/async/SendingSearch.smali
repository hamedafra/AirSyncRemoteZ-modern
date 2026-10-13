.class public Lorg/teleal/cling/protocol/async/SendingSearch;
.super Lorg/teleal/cling/protocol/SendingAsync;
.source "SendingSearch.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final mxSeconds:I

.field private final searchTarget:Lorg/teleal/cling/model/message/header/UpnpHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/teleal/cling/protocol/async/SendingSearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/async/SendingSearch;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;)V
    .locals 1
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;

    .prologue
    .line 49
    new-instance v0, Lorg/teleal/cling/model/message/header/STAllHeader;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/header/STAllHeader;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/protocol/async/SendingSearch;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/header/UpnpHeader;)V
    .locals 1
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .param p2, "searchTarget"    # Lorg/teleal/cling/model/message/header/UpnpHeader;

    .prologue
    .line 56
    sget-object v0, Lorg/teleal/cling/model/message/header/MXHeader;->DEFAULT_VALUE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/protocol/async/SendingSearch;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/header/UpnpHeader;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/header/UpnpHeader;I)V
    .locals 3
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .param p2, "searchTarget"    # Lorg/teleal/cling/model/message/header/UpnpHeader;
    .param p3, "mxSeconds"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/teleal/cling/protocol/SendingAsync;-><init>(Lorg/teleal/cling/UpnpService;)V

    .line 65
    sget-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->isValidHeaderType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given search target instance is not a valid header class for type ST: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput-object p2, p0, Lorg/teleal/cling/protocol/async/SendingSearch;->searchTarget:Lorg/teleal/cling/model/message/header/UpnpHeader;

    .line 71
    iput p3, p0, Lorg/teleal/cling/protocol/async/SendingSearch;->mxSeconds:I

    .line 72
    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 6

    .prologue
    .line 84
    sget-object v3, Lorg/teleal/cling/protocol/async/SendingSearch;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Executing search for target: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/teleal/cling/protocol/async/SendingSearch;->searchTarget:Lorg/teleal/cling/model/message/header/UpnpHeader;

    invoke-virtual {v5}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with MX seconds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingSearch;->getMxSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 86
    new-instance v2, Lorg/teleal/cling/model/message/discovery/OutgoingSearchRequest;

    iget-object v3, p0, Lorg/teleal/cling/protocol/async/SendingSearch;->searchTarget:Lorg/teleal/cling/model/message/header/UpnpHeader;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingSearch;->getMxSeconds()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchRequest;-><init>(Lorg/teleal/cling/model/message/header/UpnpHeader;I)V

    .line 88
    .local v2, "msg":Lorg/teleal/cling/model/message/discovery/OutgoingSearchRequest;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingSearch;->getBulkRepeat()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 101
    return-void

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V

    .line 94
    sget-object v3, Lorg/teleal/cling/protocol/async/SendingSearch;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sleeping "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingSearch;->getBulkIntervalMilliseconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " milliseconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingSearch;->getBulkIntervalMilliseconds()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "ex":Ljava/lang/InterruptedException;
    sget-object v3, Lorg/teleal/cling/protocol/async/SendingSearch;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Search sending thread was interrupted: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getBulkIntervalMilliseconds()I
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0x64

    return v0
.end method

.method public getBulkRepeat()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x2

    return v0
.end method

.method public getMxSeconds()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lorg/teleal/cling/protocol/async/SendingSearch;->mxSeconds:I

    return v0
.end method

.method public getSearchTarget()Lorg/teleal/cling/model/message/header/UpnpHeader;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/teleal/cling/protocol/async/SendingSearch;->searchTarget:Lorg/teleal/cling/model/message/header/UpnpHeader;

    return-object v0
.end method
