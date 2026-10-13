.class Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser$1;
.super Lorg/teleal/common/xml/NamespaceContextMap;
.source "MessageDOMParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser;->createDefaultNamespaceContext([Ljava/lang/String;)Lorg/teleal/common/xml/NamespaceContextMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser$1;->this$0:Lorg/teleal/cling/support/messagebox/parser/MessageDOMParser;

    .line 37
    invoke-direct {p0}, Lorg/teleal/common/xml/NamespaceContextMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "urn:samsung-com:messagebox-1-0"

    return-object v0
.end method
