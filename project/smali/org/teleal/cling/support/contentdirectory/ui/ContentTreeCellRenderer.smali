.class public Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeCellRenderer;
.super Ljavax/swing/tree/DefaultTreeCellRenderer;
.source "ContentTreeCellRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljavax/swing/tree/DefaultTreeCellRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContainerClosedIcon()Ljavax/swing/Icon;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContainerOpenIcon()Ljavax/swing/Icon;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getInfoIcon()Ljavax/swing/Icon;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getItemIcon(Lorg/teleal/cling/support/model/item/Item;Ljava/lang/String;)Ljavax/swing/Icon;
    .locals 1
    .param p1, "item"    # Lorg/teleal/cling/support/model/item/Item;
    .param p2, "upnpClass"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;
    .locals 5
    .param p1, "tree"    # Ljavax/swing/JTree;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "sel"    # Z
    .param p4, "expanded"    # Z
    .param p5, "leaf"    # Z
    .param p6, "row"    # I
    .param p7, "hasFocus"    # Z

    .prologue
    .line 44
    invoke-super/range {p0 .. p7}, Ljavax/swing/tree/DefaultTreeCellRenderer;->getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;

    move-object v2, p2

    .line 46
    check-cast v2, Ljavax/swing/tree/DefaultMutableTreeNode;

    .line 48
    .local v2, "node":Ljavax/swing/tree/DefaultMutableTreeNode;
    invoke-virtual {v2}, Ljavax/swing/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/teleal/cling/support/model/container/Container;

    if-eqz v4, :cond_2

    .line 50
    invoke-virtual {v2}, Ljavax/swing/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/container/Container;

    .line 51
    .local v0, "container":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->setText(Ljava/lang/String;)V

    .line 52
    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->getContainerOpenIcon()Ljavax/swing/Icon;

    move-result-object v4

    :goto_0
    invoke-virtual {p0, v4}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->setIcon(Ljavax/swing/Icon;)V

    .line 66
    .end local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->onCreate()V

    .line 67
    return-object p0

    .line 52
    .restart local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->getContainerClosedIcon()Ljavax/swing/Icon;

    move-result-object v4

    goto :goto_0

    .line 54
    .end local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_2
    invoke-virtual {v2}, Ljavax/swing/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/teleal/cling/support/model/item/Item;

    if-eqz v4, :cond_4

    .line 56
    invoke-virtual {v2}, Ljavax/swing/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/item/Item;

    .line 57
    .local v1, "item":Lorg/teleal/cling/support/model/item/Item;
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/item/Item;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->setText(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/item/Item;->getClazz()Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-result-object v3

    .line 60
    .local v3, "upnpClass":Lorg/teleal/cling/support/model/DIDLObject$Class;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {p0, v1, v4}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->getItemIcon(Lorg/teleal/cling/support/model/item/Item;Ljava/lang/String;)Ljavax/swing/Icon;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->setIcon(Ljavax/swing/Icon;)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 62
    .end local v1    # "item":Lorg/teleal/cling/support/model/item/Item;
    .end local v3    # "upnpClass":Lorg/teleal/cling/support/model/DIDLObject$Class;
    :cond_4
    invoke-virtual {v2}, Ljavax/swing/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 63
    invoke-virtual {p0}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->getInfoIcon()Ljavax/swing/Icon;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/teleal/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->setIcon(Ljavax/swing/Icon;)V

    goto :goto_1
.end method

.method protected onCreate()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
