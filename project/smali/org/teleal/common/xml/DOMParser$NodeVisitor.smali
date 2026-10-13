.class public abstract Lorg/teleal/common/xml/DOMParser$NodeVisitor;
.super Ljava/lang/Object;
.source "DOMParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/common/xml/DOMParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NodeVisitor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private nodeType:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 559
    const-class v0, Lorg/teleal/common/xml/DOMParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/teleal/common/xml/DOMParser$NodeVisitor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(S)V
    .locals 1
    .param p1, "nodeType"    # S

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    sget-boolean v0, Lorg/teleal/common/xml/DOMParser$NodeVisitor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 564
    :cond_0
    iput-short p1, p0, Lorg/teleal/common/xml/DOMParser$NodeVisitor;->nodeType:S

    .line 565
    return-void
.end method

.method static synthetic access$000(Lorg/teleal/common/xml/DOMParser$NodeVisitor;)S
    .locals 1
    .param p0, "x0"    # Lorg/teleal/common/xml/DOMParser$NodeVisitor;

    .prologue
    .line 559
    iget-short v0, p0, Lorg/teleal/common/xml/DOMParser$NodeVisitor;->nodeType:S

    return v0
.end method


# virtual methods
.method public isHalted()Z
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method public abstract visit(Lorg/w3c/dom/Node;)V
.end method
