.class Lorg/teleal/cling/support/contentdirectory/ui/ContentTree$2;
.super Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;
.source "ContentTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->createContentBrowseActionCallback(Lorg/teleal/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;)Lorg/teleal/cling/controlpoint/ActionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;Lorg/teleal/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;)V
    .locals 0
    .param p2, "$anonymous0"    # Lorg/teleal/cling/model/meta/Service;
    .param p3, "$anonymous1"    # Ljavax/swing/tree/DefaultTreeModel;
    .param p4, "$anonymous2"    # Ljavax/swing/tree/DefaultMutableTreeNode;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree$2;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;

    .line 94
    invoke-direct {p0, p2, p3, p4}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;-><init>(Lorg/teleal/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;)V

    return-void
.end method


# virtual methods
.method public failureUI(Ljava/lang/String;)V
    .locals 1
    .param p1, "failureMessage"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree$2;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->failure(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public updateStatusUI(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;Ljavax/swing/tree/DefaultMutableTreeNode;Ljavax/swing/tree/DefaultTreeModel;)V
    .locals 1
    .param p1, "status"    # Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;
    .param p2, "treeNode"    # Ljavax/swing/tree/DefaultMutableTreeNode;
    .param p3, "treeModel"    # Ljavax/swing/tree/DefaultTreeModel;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree$2;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;

    invoke-virtual {v0, p1, p2, p3}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->updateStatus(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;Ljavax/swing/tree/DefaultMutableTreeNode;Ljavax/swing/tree/DefaultTreeModel;)V

    .line 97
    return-void
.end method
