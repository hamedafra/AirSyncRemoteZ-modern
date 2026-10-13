.class Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$2;
.super Ljavax/swing/tree/DefaultMutableTreeNode;
.source "ContentBrowseActionCallback.java"


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


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Ljava/lang/Object;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/Object;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$2;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    .line 103
    invoke-direct {p0, p2}, Ljavax/swing/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public isLeaf()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method
