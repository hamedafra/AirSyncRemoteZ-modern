.class Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl$1;
.super Ljava/lang/Object;
.source "ContentBrowseActionCallbackImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/DIDLContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;

.field private final synthetic val$actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

.field private final synthetic val$didl:Lorg/teleal/cling/support/model/DIDLContent;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;Lorg/teleal/cling/support/model/DIDLContent;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;

    iput-object p2, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl$1;->val$didl:Lorg/teleal/cling/support/model/DIDLContent;

    iput-object p3, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl$1;->val$actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 52
    :try_start_0
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;

    invoke-static {v3}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->access$0(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 54
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl$1;->val$didl:Lorg/teleal/cling/support/model/DIDLContent;

    invoke-virtual {v3}, Lorg/teleal/cling/support/model/DIDLContent;->getContainers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 59
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl$1;->val$didl:Lorg/teleal/cling/support/model/DIDLContent;

    invoke-virtual {v3}, Lorg/teleal/cling/support/model/DIDLContent;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 68
    :goto_2
    return-void

    .line 54
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/container/Container;

    .line 55
    .local v0, "childContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-static {}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->access$1()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "add child container "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 56
    iget-object v4, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;

    invoke-static {v4}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->access$0(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/teleal/cling/support/model/ContentItem;

    iget-object v6, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;

    invoke-static {v6}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->access$2(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lorg/teleal/cling/support/model/ContentItem;-><init>(Lorg/teleal/cling/support/model/container/Container;Lorg/teleal/cling/model/meta/Service;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v0    # "childContainer":Lorg/teleal/cling/support/model/container/Container;
    :catch_0
    move-exception v2

    .line 64
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->access$1()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Creating DIDL tree nodes failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl$1;->val$actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    new-instance v4, Lorg/teleal/cling/model/action/ActionException;

    sget-object v5, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t create list childs: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lorg/teleal/cling/model/action/ActionInvocation;->setFailure(Lorg/teleal/cling/model/action/ActionException;)V

    .line 66
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;

    iget-object v4, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl$1;->val$actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->access$3(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    goto :goto_2

    .line 59
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/item/Item;

    .line 60
    .local v1, "childItem":Lorg/teleal/cling/support/model/item/Item;
    invoke-static {}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->access$1()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "add child item"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/item/Item;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 61
    iget-object v4, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;

    invoke-static {v4}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->access$0(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/teleal/cling/support/model/ContentItem;

    iget-object v6, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;

    invoke-static {v6}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;->access$2(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackImpl;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lorg/teleal/cling/support/model/ContentItem;-><init>(Lorg/teleal/cling/support/model/item/Item;Lorg/teleal/cling/model/meta/Service;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
