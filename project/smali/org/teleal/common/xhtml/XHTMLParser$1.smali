.class Lorg/teleal/common/xhtml/XHTMLParser$1;
.super Lorg/teleal/common/xml/DOMParser$NodeVisitor;
.source "XHTMLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/common/xhtml/XHTMLParser;->checkDuplicateIdentifiers(Lorg/teleal/common/xhtml/XHTML;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/common/xhtml/XHTMLParser;

.field final synthetic val$identifiers:Ljava/util/Set;


# direct methods
.method constructor <init>(Lorg/teleal/common/xhtml/XHTMLParser;SLjava/util/Set;)V
    .locals 0
    .param p2, "x0"    # S

    .prologue
    .line 45
    iput-object p1, p0, Lorg/teleal/common/xhtml/XHTMLParser$1;->this$0:Lorg/teleal/common/xhtml/XHTMLParser;

    iput-object p3, p0, Lorg/teleal/common/xhtml/XHTMLParser$1;->val$identifiers:Ljava/util/Set;

    invoke-direct {p0, p2}, Lorg/teleal/common/xml/DOMParser$NodeVisitor;-><init>(S)V

    return-void
.end method


# virtual methods
.method public visit(Lorg/w3c/dom/Node;)V
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 48
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    .line 50
    .local v0, "element":Lorg/w3c/dom/Element;
    sget-object v2, Lorg/teleal/common/xhtml/XHTML$ATTR;->id:Lorg/teleal/common/xhtml/XHTML$ATTR;

    invoke-virtual {v2}, Lorg/teleal/common/xhtml/XHTML$ATTR;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "id":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    iget-object v2, p0, Lorg/teleal/common/xhtml/XHTMLParser$1;->val$identifiers:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate identifier, override/change value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_0
    iget-object v2, p0, Lorg/teleal/common/xhtml/XHTMLParser$1;->val$identifiers:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_1
    return-void
.end method
