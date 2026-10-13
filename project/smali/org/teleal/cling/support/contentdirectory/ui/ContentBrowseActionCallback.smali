.class public abstract Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;
.super Lorg/teleal/cling/support/contentdirectory/callback/Browse;
.source "ContentBrowseActionCallback.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final treeModel:Ljavax/swing/tree/DefaultTreeModel;

.field protected final treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;)V
    .locals 11
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "treeModel"    # Ljavax/swing/tree/DefaultTreeModel;
    .param p3, "treeNode"    # Ljavax/swing/tree/DefaultMutableTreeNode;

    .prologue
    const/4 v10, 0x1

    .line 54
    invoke-virtual {p3}, Ljavax/swing/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/container/Container;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/teleal/cling/support/model/BrowseFlag;->DIRECT_CHILDREN:Lorg/teleal/cling/support/model/BrowseFlag;

    const-string v5, "*"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    new-array v9, v10, [Lorg/teleal/cling/support/model/SortCriterion;

    const/4 v0, 0x0

    new-instance v1, Lorg/teleal/cling/support/model/SortCriterion;

    const-string v2, "dc:title"

    invoke-direct {v1, v10, v2}, Lorg/teleal/cling/support/model/SortCriterion;-><init>(ZLjava/lang/String;)V

    aput-object v1, v9, v0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;-><init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lorg/teleal/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/teleal/cling/support/model/SortCriterion;)V

    .line 55
    iput-object p2, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    .line 56
    iput-object p3, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    .line 57
    return-void
.end method

.method public varargs constructor <init>(Lorg/teleal/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;Ljava/lang/String;JJ[Lorg/teleal/cling/support/model/SortCriterion;)V
    .locals 11
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "treeModel"    # Ljavax/swing/tree/DefaultTreeModel;
    .param p3, "treeNode"    # Ljavax/swing/tree/DefaultMutableTreeNode;
    .param p4, "filter"    # Ljava/lang/String;
    .param p5, "firstResult"    # J
    .param p7, "maxResults"    # J
    .param p9, "orderBy"    # [Lorg/teleal/cling/support/model/SortCriterion;

    .prologue
    .line 61
    invoke-virtual {p3}, Ljavax/swing/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/container/Container;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/teleal/cling/support/model/BrowseFlag;->DIRECT_CHILDREN:Lorg/teleal/cling/support/model/BrowseFlag;

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;-><init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lorg/teleal/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/teleal/cling/support/model/SortCriterion;)V

    .line 62
    iput-object p2, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    .line 63
    iput-object p3, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    .line 64
    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 1
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "operation"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p3, "defaultMsg"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$5;

    invoke-direct {v0, p0, p3}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$5;-><init>(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Ljava/lang/String;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public abstract failureUI(Ljava/lang/String;)V
.end method

.method public getTreeModel()Ljavax/swing/tree/DefaultTreeModel;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    return-object v0
.end method

.method public getTreeNode()Ljavax/swing/tree/DefaultMutableTreeNode;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method protected insertChild(Ljavax/swing/tree/MutableTreeNode;)V
    .locals 3
    .param p1, "childNode"    # Ljavax/swing/tree/MutableTreeNode;

    .prologue
    .line 161
    iget-object v1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-virtual {v1}, Ljavax/swing/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    .line 162
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    iget-object v2, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-virtual {v1, p1, v2, v0}, Ljavax/swing/tree/DefaultTreeModel;->insertNodeInto(Ljavax/swing/tree/MutableTreeNode;Ljavax/swing/tree/MutableTreeNode;I)V

    .line 163
    return-void

    .line 161
    .end local v0    # "index":I
    :cond_0
    iget-object v1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-virtual {v1}, Ljavax/swing/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    goto :goto_0
.end method

.method public received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/DIDLContent;)V
    .locals 9
    .param p1, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "didl"    # Lorg/teleal/cling/support/model/DIDLContent;

    .prologue
    .line 75
    sget-object v5, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->log:Ljava/util/logging/Logger;

    const-string v6, "Received browse action DIDL descriptor, creating tree nodes"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v3, "childNodes":Ljava/util/List;, "Ljava/util/List<Ljavax/swing/tree/DefaultMutableTreeNode;>;"
    :try_start_0
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLContent;->getContainers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 102
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLContent;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 120
    :goto_2
    new-instance v5, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$3;

    invoke-direct {v5, p0, v3}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$3;-><init>(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Ljava/util/List;)V

    invoke-static {v5}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 125
    return-void

    .line 81
    :cond_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/container/Container;

    .line 82
    .local v0, "childContainer":Lorg/teleal/cling/support/model/container/Container;
    new-instance v2, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;

    invoke-direct {v2, p0, v0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$1;-><init>(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Ljava/lang/Object;)V

    .line 98
    .local v2, "childNode":Ljavax/swing/tree/DefaultMutableTreeNode;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 112
    .end local v0    # "childContainer":Lorg/teleal/cling/support/model/container/Container;
    .end local v2    # "childNode":Ljavax/swing/tree/DefaultMutableTreeNode;
    :catch_0
    move-exception v4

    .line 113
    .local v4, "ex":Ljava/lang/Exception;
    sget-object v5, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Creating DIDL tree nodes failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 115
    new-instance v5, Lorg/teleal/cling/model/action/ActionException;

    sget-object v6, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t create tree child nodes: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    invoke-virtual {p1, v5}, Lorg/teleal/cling/model/action/ActionInvocation;->setFailure(Lorg/teleal/cling/model/action/ActionException;)V

    .line 117
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    goto :goto_2

    .line 102
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/item/Item;

    .line 103
    .local v1, "childItem":Lorg/teleal/cling/support/model/item/Item;
    new-instance v2, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$2;

    invoke-direct {v2, p0, v1}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$2;-><init>(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Ljava/lang/Object;)V

    .line 109
    .restart local v2    # "childNode":Ljavax/swing/tree/DefaultMutableTreeNode;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected removeChildren()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-virtual {v0}, Ljavax/swing/tree/DefaultMutableTreeNode;->removeAllChildren()V

    .line 157
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeModel:Ljavax/swing/tree/DefaultTreeModel;

    iget-object v1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->treeNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-virtual {v0, v1}, Ljavax/swing/tree/DefaultTreeModel;->nodeStructureChanged(Ljavax/swing/tree/TreeNode;)V

    .line 158
    return-void
.end method

.method public updateStatus(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;)V
    .locals 1
    .param p1, "status"    # Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    .prologue
    .line 128
    new-instance v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$4;

    invoke-direct {v0, p0, p1}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback$4;-><init>(Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public abstract updateStatusUI(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;Ljavax/swing/tree/DefaultMutableTreeNode;Ljavax/swing/tree/DefaultTreeModel;)V
.end method

.method protected updateTreeModel(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavax/swing/tree/DefaultMutableTreeNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "childNodes":Ljava/util/List;, "Ljava/util/List<Ljavax/swing/tree/DefaultMutableTreeNode;>;"
    sget-object v1, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding nodes to tree: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->removeChildren()V

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    return-void

    .line 150
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/tree/DefaultMutableTreeNode;

    .line 151
    .local v0, "childNode":Ljavax/swing/tree/DefaultMutableTreeNode;
    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallback;->insertChild(Ljavax/swing/tree/MutableTreeNode;)V

    goto :goto_0
.end method
