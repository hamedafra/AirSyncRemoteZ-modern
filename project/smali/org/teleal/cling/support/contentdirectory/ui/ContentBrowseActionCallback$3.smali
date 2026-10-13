.class Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$3;
.super Ljava/lang/Object;
.source "ContentBrowseActionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/DIDLContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

.field private final synthetic val$childNodes:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$3;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    iput-object p2, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$3;->val$childNodes:Ljava/util/List;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$3;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    iget-object v1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$3;->val$childNodes:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->updateTreeModel(Ljava/util/List;)V

    .line 123
    return-void
.end method
