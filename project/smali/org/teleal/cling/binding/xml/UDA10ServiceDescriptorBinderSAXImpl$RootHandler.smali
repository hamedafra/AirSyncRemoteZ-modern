.class public Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$RootHandler;
.super Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;
.source "UDA10ServiceDescriptorBinderSAXImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RootHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler",
        "<",
        "Lorg/teleal/cling/binding/staging/MutableService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/binding/staging/MutableService;Lorg/teleal/common/xml/SAXParser;)V
    .locals 0
    .param p1, "instance"    # Lorg/teleal/cling/binding/staging/MutableService;
    .param p2, "parser"    # Lorg/teleal/common/xml/SAXParser;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;-><init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser;)V

    .line 92
    return-void
.end method


# virtual methods
.method public startElement(Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "element"    # Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 105
    sget-object v2, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionListHandler;->EL:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/binding/staging/MutableAction;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableService;

    iput-object v0, v2, Lorg/teleal/cling/binding/staging/MutableService;->actions:Ljava/util/List;

    .line 108
    new-instance v2, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionListHandler;

    invoke-direct {v2, v0, p0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionListHandler;-><init>(Ljava/util/List;Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    .line 111
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/binding/staging/MutableAction;>;"
    :cond_0
    sget-object v2, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableListHandler;->EL:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, "stateVariables":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/binding/staging/MutableStateVariable;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableService;

    iput-object v1, v2, Lorg/teleal/cling/binding/staging/MutableService;->stateVariables:Ljava/util/List;

    .line 114
    new-instance v2, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableListHandler;

    invoke-direct {v2, v1, p0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableListHandler;-><init>(Ljava/util/List;Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    .line 117
    .end local v1    # "stateVariables":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/binding/staging/MutableStateVariable;>;"
    :cond_1
    return-void
.end method
