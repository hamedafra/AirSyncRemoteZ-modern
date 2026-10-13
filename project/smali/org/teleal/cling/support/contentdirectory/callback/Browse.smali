.class public abstract Lorg/teleal/cling/support/contentdirectory/callback/Browse;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "Browse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;
    }
.end annotation


# static fields
.field public static final CAPS_WILDCARD:Ljava/lang/String; = "*"

.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lorg/teleal/cling/support/model/BrowseFlag;)V
    .locals 10
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "flag"    # Lorg/teleal/cling/support/model/BrowseFlag;

    .prologue
    .line 65
    const-string v5, "*"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    new-array v9, v0, [Lorg/teleal/cling/support/model/SortCriterion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;-><init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lorg/teleal/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/teleal/cling/support/model/SortCriterion;)V

    .line 66
    return-void
.end method

.method public varargs constructor <init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lorg/teleal/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/teleal/cling/support/model/SortCriterion;)V
    .locals 5
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "objectID"    # Ljava/lang/String;
    .param p3, "flag"    # Lorg/teleal/cling/support/model/BrowseFlag;
    .param p4, "filter"    # Ljava/lang/String;
    .param p5, "firstResult"    # J
    .param p7, "maxResults"    # Ljava/lang/Long;
    .param p8, "orderBy"    # [Lorg/teleal/cling/support/model/SortCriterion;

    .prologue
    .line 74
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "Browse"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 76
    sget-object v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating browse action for object ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "ObjectID"

    invoke-virtual {v0, v1, p2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "BrowseFlag"

    invoke-virtual {p3}, Lorg/teleal/cling/support/model/BrowseFlag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "Filter"

    invoke-virtual {v0, v1, p4}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "StartingIndex"

    new-instance v2, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v2, p5, p6}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v2

    const-string v3, "RequestedCount"

    .line 83
    new-instance v4, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    if-nez p7, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->getDefaultMaxResults()J

    move-result-wide v0

    :goto_0
    invoke-direct {v4, v0, v1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    .line 82
    invoke-virtual {v2, v3, v4}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "SortCriteria"

    invoke-static {p8}, Lorg/teleal/cling/support/model/SortCriterion;->toString([Lorg/teleal/cling/support/model/SortCriterion;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-void

    .line 83
    :cond_0
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public getDefaultMaxResults()J
    .locals 2

    .prologue
    .line 134
    const-wide/16 v0, 0x3e7

    return-wide v0
.end method

.method public abstract received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/DIDLContent;)V
.end method

.method public receivedRaw(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/BrowseResult;)Z
    .locals 1
    .param p1, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "browseResult"    # Lorg/teleal/cling/support/model/BrowseResult;

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->LOADING:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->updateStatus(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;)V

    .line 91
    invoke-super {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->run()V

    .line 92
    return-void
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 10
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 95
    sget-object v5, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->log:Ljava/util/logging/Logger;

    const-string v6, "Successful browse action, reading output argument values"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 97
    new-instance v4, Lorg/teleal/cling/support/model/BrowseResult;

    .line 98
    const-string v5, "Result"

    invoke-virtual {p1, v5}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 99
    const-string v5, "NumberReturned"

    invoke-virtual {p1, v5}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 100
    const-string v6, "TotalMatches"

    invoke-virtual {p1, v6}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v6

    invoke-virtual {v6}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 101
    const-string v7, "UpdateID"

    invoke-virtual {p1, v7}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v7

    invoke-virtual {v7}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 97
    invoke-direct {v4, v8, v5, v6, v7}, Lorg/teleal/cling/support/model/BrowseResult;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V

    .line 104
    .local v4, "result":Lorg/teleal/cling/support/model/BrowseResult;
    invoke-virtual {p0, p1, v4}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->receivedRaw(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/BrowseResult;)Z

    move-result v3

    .line 106
    .local v3, "proceed":Z
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/BrowseResult;->getCountLong()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/BrowseResult;->getResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 110
    :try_start_0
    new-instance v1, Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-direct {v1}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;-><init>()V

    .line 111
    .local v1, "didlParser":Lorg/teleal/cling/support/contentdirectory/DIDLParser;
    invoke-virtual {v4}, Lorg/teleal/cling/support/model/BrowseResult;->getResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->parse(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLContent;

    move-result-object v0

    .line 112
    .local v0, "didl":Lorg/teleal/cling/support/model/DIDLContent;
    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/DIDLContent;)V

    .line 113
    sget-object v5, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->OK:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    invoke-virtual {p0, v5}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->updateStatus(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0    # "didl":Lorg/teleal/cling/support/model/DIDLContent;
    .end local v1    # "didlParser":Lorg/teleal/cling/support/contentdirectory/DIDLParser;
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v2

    .line 117
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v5, Lorg/teleal/cling/model/action/ActionException;

    sget-object v6, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t parse DIDL XML response: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    invoke-virtual {p1, v5}, Lorg/teleal/cling/model/action/ActionInvocation;->setFailure(Lorg/teleal/cling/model/action/ActionException;)V

    .line 119
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 123
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    new-instance v5, Lorg/teleal/cling/support/model/DIDLContent;

    invoke-direct {v5}, Lorg/teleal/cling/support/model/DIDLContent;-><init>()V

    invoke-virtual {p0, p1, v5}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/DIDLContent;)V

    .line 124
    sget-object v5, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->NO_CONTENT:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    invoke-virtual {p0, v5}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;->updateStatus(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;)V

    goto :goto_0
.end method

.method public abstract updateStatus(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;)V
.end method
