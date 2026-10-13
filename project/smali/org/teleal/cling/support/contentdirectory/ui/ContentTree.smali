.class public abstract Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;
.super Ljavax/swing/JTree;
.source "ContentTree.java"

# interfaces
.implements Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackCreator;


# static fields
.field private static synthetic $SWITCH_TABLE$org$teleal$cling$support$contentdirectory$callback$Browse$Status:[I


# instance fields
.field protected final rootContainer:Lorg/teleal/cling/support/model/container/Container;

.field protected final rootNode:Ljavax/swing/tree/DefaultMutableTreeNode;


# direct methods
.method static synthetic $SWITCH_TABLE$org$teleal$cling$support$contentdirectory$callback$Browse$Status()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->$SWITCH_TABLE$org$teleal$cling$support$contentdirectory$callback$Browse$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->values()[Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->LOADING:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    invoke-virtual {v1}, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->NO_CONTENT:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    invoke-virtual {v1}, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->OK:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    invoke-virtual {v1}, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->$SWITCH_TABLE$org$teleal$cling$support$contentdirectory$callback$Browse$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/model/meta/Service;)V
    .locals 3
    .param p1, "controlPoint"    # Lorg/teleal/cling/controlpoint/ControlPoint;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 45
    invoke-direct {p0}, Ljavax/swing/JTree;-><init>()V

    .line 47
    invoke-virtual {p0, p2}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->createRootContainer(Lorg/teleal/cling/model/meta/Service;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->rootContainer:Lorg/teleal/cling/support/model/container/Container;

    .line 48
    new-instance v1, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree$1;

    iget-object v2, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->rootContainer:Lorg/teleal/cling/support/model/container/Container;

    invoke-direct {v1, p0, v2}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree$1;-><init>(Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->rootNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    .line 55
    new-instance v0, Ljavax/swing/tree/DefaultTreeModel;

    iget-object v1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->rootNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-direct {v0, v1}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;)V

    .line 56
    .local v0, "treeModel":Ljavax/swing/tree/DefaultTreeModel;
    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    .line 58
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->getSelectionModel()Ljavax/swing/tree/TreeSelectionModel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljavax/swing/tree/TreeSelectionModel;->setSelectionMode(I)V

    .line 59
    invoke-virtual {p0, p1, p2, v0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->createContainerTreeExpandListener(Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;)Ljavax/swing/event/TreeWillExpandListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->addTreeWillExpandListener(Ljavax/swing/event/TreeWillExpandListener;)V

    .line 60
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->createContainerTreeCellRenderer()Ljavax/swing/tree/DefaultTreeCellRenderer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->setCellRenderer(Ljavax/swing/tree/TreeCellRenderer;)V

    .line 62
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->getRootNode()Ljavax/swing/tree/DefaultMutableTreeNode;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->createContentBrowseActionCallback(Lorg/teleal/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;)Lorg/teleal/cling/controlpoint/ActionCallback;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/teleal/cling/controlpoint/ControlPoint;->execute(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    .line 63
    return-void
.end method


# virtual methods
.method protected createContainerTreeCellRenderer()Ljavax/swing/tree/DefaultTreeCellRenderer;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeCellRenderer;

    invoke-direct {v0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeCellRenderer;-><init>()V

    return-object v0
.end method

.method protected createContainerTreeExpandListener(Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;)Ljavax/swing/event/TreeWillExpandListener;
    .locals 1
    .param p1, "controlPoint"    # Lorg/teleal/cling/controlpoint/ControlPoint;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p3, "treeModel"    # Ljavax/swing/tree/DefaultTreeModel;

    .prologue
    .line 83
    new-instance v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeExpandListener;

    invoke-direct {v0, p1, p2, p3, p0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeExpandListener;-><init>(Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Lorg/teleal/cling/support/contentdirectory/ui/ContentBrowseActionCallbackCreator;)V

    return-object v0
.end method

.method public createContentBrowseActionCallback(Lorg/teleal/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;)Lorg/teleal/cling/controlpoint/ActionCallback;
    .locals 1
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "treeModel"    # Ljavax/swing/tree/DefaultTreeModel;
    .param p3, "treeNode"    # Ljavax/swing/tree/DefaultMutableTreeNode;

    .prologue
    .line 94
    new-instance v0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree$2;-><init>(Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;Lorg/teleal/cling/model/meta/Service;Ljavax/swing/tree/DefaultTreeModel;Ljavax/swing/tree/DefaultMutableTreeNode;)V

    return-object v0
.end method

.method protected createRootContainer(Lorg/teleal/cling/model/meta/Service;)Lorg/teleal/cling/support/model/container/Container;
    .locals 3
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 74
    new-instance v0, Lorg/teleal/cling/support/model/container/Container;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/container/Container;-><init>()V

    .line 75
    .local v0, "rootContainer":Lorg/teleal/cling/support/model/container/Container;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setId(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content Directory on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Service;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/Device;->getDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/model/container/Container;->setTitle(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 77
    return-object v0
.end method

.method public abstract failure(Ljava/lang/String;)V
.end method

.method public getRootContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->rootContainer:Lorg/teleal/cling/support/model/container/Container;

    return-object v0
.end method

.method public getRootNode()Ljavax/swing/tree/DefaultMutableTreeNode;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->rootNode:Ljavax/swing/tree/DefaultMutableTreeNode;

    return-object v0
.end method

.method public updateStatus(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;Ljavax/swing/tree/DefaultMutableTreeNode;Ljavax/swing/tree/DefaultTreeModel;)V
    .locals 3
    .param p1, "status"    # Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;
    .param p2, "treeNode"    # Ljavax/swing/tree/DefaultMutableTreeNode;
    .param p3, "treeModel"    # Ljavax/swing/tree/DefaultTreeModel;

    .prologue
    .line 106
    invoke-static {}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;->$SWITCH_TABLE$org$teleal$cling$support$contentdirectory$callback$Browse$Status()[I

    move-result-object v1

    invoke-virtual {p1}, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 109
    :pswitch_0
    invoke-virtual {p2}, Ljavax/swing/tree/DefaultMutableTreeNode;->removeAllChildren()V

    .line 110
    invoke-virtual {p2}, Ljavax/swing/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    .line 111
    .local v0, "index":I
    :goto_1
    new-instance v1, Ljavax/swing/tree/DefaultMutableTreeNode;

    invoke-virtual {p1}, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->getDefaultMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/swing/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, v1, p2, v0}, Ljavax/swing/tree/DefaultTreeModel;->insertNodeInto(Ljavax/swing/tree/MutableTreeNode;Ljavax/swing/tree/MutableTreeNode;I)V

    .line 112
    invoke-virtual {p3, p2}, Ljavax/swing/tree/DefaultTreeModel;->nodeStructureChanged(Ljavax/swing/tree/TreeNode;)V

    goto :goto_0

    .line 110
    .end local v0    # "index":I
    :cond_0
    invoke-virtual {p2}, Ljavax/swing/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    goto :goto_1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
