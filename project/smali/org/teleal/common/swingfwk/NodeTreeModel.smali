.class public Lorg/teleal/common/swingfwk/NodeTreeModel;
.super Ljava/lang/Object;
.source "NodeTreeModel.java"

# interfaces
.implements Ljavax/swing/tree/TreeModel;


# instance fields
.field private rootNode:Lorg/teleal/common/swingfwk/Node;

.field private selectedNode:Lorg/teleal/common/swingfwk/Node;


# direct methods
.method public constructor <init>(Lorg/teleal/common/swingfwk/Node;)V
    .locals 0
    .param p1, "rootNode"    # Lorg/teleal/common/swingfwk/Node;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/teleal/common/swingfwk/NodeTreeModel;->rootNode:Lorg/teleal/common/swingfwk/Node;

    .line 36
    return-void
.end method


# virtual methods
.method public addTreeModelListener(Ljavax/swing/event/TreeModelListener;)V
    .locals 0
    .param p1, "l"    # Ljavax/swing/event/TreeModelListener;

    .prologue
    .line 75
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 56
    move-object v1, p1

    check-cast v1, Lorg/teleal/common/swingfwk/Node;

    .line 57
    .local v1, "node":Lorg/teleal/common/swingfwk/Node;
    invoke-interface {v1}, Lorg/teleal/common/swingfwk/Node;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "child":Ljava/lang/Object;
    return-object v0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 2
    .param p1, "parent"    # Ljava/lang/Object;

    .prologue
    .line 51
    move-object v0, p1

    check-cast v0, Lorg/teleal/common/swingfwk/Node;

    .line 52
    .local v0, "node":Lorg/teleal/common/swingfwk/Node;
    invoke-interface {v0}, Lorg/teleal/common/swingfwk/Node;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method public getIndexOfChild(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "child"    # Ljava/lang/Object;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 65
    :goto_0
    return v0

    :cond_1
    move-object v1, p1

    .line 63
    check-cast v1, Lorg/teleal/common/swingfwk/Node;

    .line 64
    .local v1, "node":Lorg/teleal/common/swingfwk/Node;
    invoke-interface {v1}, Lorg/teleal/common/swingfwk/Node;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 65
    .local v0, "index":I
    goto :goto_0
.end method

.method public getRoot()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/teleal/common/swingfwk/NodeTreeModel;->rootNode:Lorg/teleal/common/swingfwk/Node;

    return-object v0
.end method

.method public isLeaf(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 45
    move-object v1, p1

    check-cast v1, Lorg/teleal/common/swingfwk/Node;

    .line 46
    .local v1, "node":Lorg/teleal/common/swingfwk/Node;
    invoke-interface {v1}, Lorg/teleal/common/swingfwk/Node;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 47
    .local v0, "isLeaf":Z
    :goto_0
    return v0

    .line 46
    .end local v0    # "isLeaf":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeTreeModelListener(Ljavax/swing/event/TreeModelListener;)V
    .locals 0
    .param p1, "l"    # Ljavax/swing/event/TreeModelListener;

    .prologue
    .line 76
    return-void
.end method

.method public valueForPathChanged(Ljavax/swing/tree/TreePath;Ljava/lang/Object;)V
    .locals 0
    .param p1, "path"    # Ljavax/swing/tree/TreePath;
    .param p2, "newvalue"    # Ljava/lang/Object;

    .prologue
    .line 71
    return-void
.end method
