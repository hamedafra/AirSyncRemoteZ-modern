.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$2;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->deviceBrowseSuccess(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

.field final synthetic val$result:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$2;->val$result:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1105
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$2;->val$result:Ljava/util/Map;

    const-string v5, "Containers"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1107
    .local v0, "containers":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/DIDLObject;

    .line 1109
    .local v1, "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1110
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1112
    .local v3, "title":Ljava/lang/String;
    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isImage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1114
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "IMAGE"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1117
    :cond_0
    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isVideo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1119
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "VIDEO"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1122
    :cond_1
    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isMusic(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1124
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "MUSIC"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1129
    :cond_2
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1133
    .end local v1    # "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->access$3400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V

    .line 1134
    return-void
.end method
