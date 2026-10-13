.class Lorg/teleal/common/xml/DOMParser$2;
.super Lorg/teleal/common/xml/DOMParser$NodeVisitor;
.source "DOMParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/common/xml/DOMParser;->printHTML(Lorg/w3c/dom/Document;IZZ)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/common/xml/DOMParser;


# direct methods
.method constructor <init>(Lorg/teleal/common/xml/DOMParser;S)V
    .locals 0
    .param p2, "x0"    # S

    .prologue
    .line 386
    .local p0, "this":Lorg/teleal/common/xml/DOMParser$2;, "Lorg/teleal/common/xml/DOMParser.2;"
    iput-object p1, p0, Lorg/teleal/common/xml/DOMParser$2;->this$0:Lorg/teleal/common/xml/DOMParser;

    invoke-direct {p0, p2}, Lorg/teleal/common/xml/DOMParser$NodeVisitor;-><init>(S)V

    return-void
.end method


# virtual methods
.method public visit(Lorg/w3c/dom/Node;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 389
    .local p0, "this":Lorg/teleal/common/xml/DOMParser$2;, "Lorg/teleal/common/xml/DOMParser.2;"
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/CDATASection;

    .line 390
    .local v0, "cdata":Lorg/w3c/dom/CDATASection;
    invoke-interface {v0}, Lorg/w3c/dom/CDATASection;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/CDATASection;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 391
    return-void
.end method
