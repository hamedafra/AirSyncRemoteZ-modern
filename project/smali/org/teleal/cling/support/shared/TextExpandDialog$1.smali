.class Lorg/teleal/cling/support/shared/TextExpandDialog$1;
.super Lorg/teleal/common/xml/DOMParser;
.source "TextExpandDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/support/shared/TextExpandDialog;-><init>(Ljava/awt/Frame;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/shared/TextExpandDialog;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/shared/TextExpandDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/support/shared/TextExpandDialog$1;->this$0:Lorg/teleal/cling/support/shared/TextExpandDialog;

    .line 54
    invoke-direct {p0}, Lorg/teleal/common/xml/DOMParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDOM(Lorg/w3c/dom/Document;)Lorg/teleal/common/xml/DOM;
    .locals 1
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method
