.class public Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeExpandListener;
.super Ljava/lang/Object;
.source "ContentTreeExpandListener.java"

# interfaces
.implements Ljavax/swing/event/TreeWillExpandListener;


# instance fields
.field protected final actionCreator:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackCreator;

.field protected final controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

.field protected final service:Lorg/teleal/cling/model/meta/Service;

.field protected final treeModel:Ljavax/swing/tree/DefaultTreeModel;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackCreator;)V
    .locals 0
    .param p1, "controlPoint"    # Lorg/teleal/cling/controlpoint/ControlPoint;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p3, "treeModel"    # Ljavax/swing/tree/DefaultTreeModel;
    .param p4, "actionCreator"    # Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackCreator;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeExpandListener;->controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    .line 45
    iput-object p2, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeExpandListener;->service:Lorg/teleal/cling/model/meta/Service;

    .line 46
    iput-object p3, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeExpandListener;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    .line 47
    iput-object p4, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeExpandListener;->actionCreator:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackCreator;

    .line 48
    return-void
.end method


# virtual methods
.method public treeWillCollapse(Ljavax/swing/event/TreeExpansionEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/swing/event/TreeExpansionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/tree/ExpandVetoException;
        }
    .end annotation

    .prologue
    .line 67
    return-void
.end method

.method public treeWillExpand(Ljavax/swing/event/TreeExpansionEvent;)V
    .locals 5
    .param p1, "e"    # Ljavax/swing/event/TreeExpansionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/tree/ExpandVetoException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p1}, Ljavax/swing/event/TreeExpansionEvent;->getPath()Ljavax/swing/tree/TreePath;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/swing/tree/DefaultMutableTreeNode;

    .line 54
    .local v1, "treeNode":Ljavax/swing/tree/DefaultMutableTreeNode;
    invoke-virtual {v1}, Ljavax/swing/tree/DefaultMutableTreeNode;->removeAllChildren()V

    .line 55
    iget-object v2, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeExpandListener;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    invoke-virtual {v2, v1}, Ljavax/swing/tree/DefaultTreeModel;->nodeStructureChanged(Ljavax/swing/tree/TreeNode;)V

    .line 59
    iget-object v2, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeExpandListener;->actionCreator:Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackCreator;

    .line 60
    iget-object v3, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeExpandListener;->service:Lorg/teleal/cling/model/meta/Service;

    iget-object v4, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeExpandListener;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    .line 59
    invoke-interface {v2, v3, v4, v1}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackCreator;->createContentBrowseActionCallback(Lorg/teleal/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;)Lorg/teleal/cling/controlpoint/ActionCallback;

    move-result-object v0

    .line 62
    .local v0, "callback":Lorg/teleal/cling/controlpoint/ActionCallback;
    iget-object v2, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeExpandListener;->controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    invoke-interface {v2, v0}, Lorg/teleal/cling/controlpoint/ControlPoint;->execute(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    .line 63
    return-void
.end method
