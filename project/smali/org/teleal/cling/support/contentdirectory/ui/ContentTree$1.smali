.class Lorg/teleal/cling/support/contentdirectory/ui/ContentTree$1;
.super Ljavax/swing/tree/DefaultMutableTreeNode;
.source "ContentTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;-><init>(Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/model/meta/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;Ljava/lang/Object;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/Object;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/ui/ContentTree$1;->this$0:Lorg/teleal/cling/support/contentdirectory/ui/ContentTree;

    .line 48
    invoke-direct {p0, p2}, Ljavax/swing/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public isLeaf()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
