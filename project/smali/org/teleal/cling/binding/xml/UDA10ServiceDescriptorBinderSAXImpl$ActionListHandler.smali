.class public Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionListHandler;
.super Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;
.source "UDA10ServiceDescriptorBinderSAXImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ActionListHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/teleal/cling/binding/staging/MutableAction;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final EL:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->actionList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    sput-object v0, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionListHandler;->EL:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V
    .locals 0
    .param p2, "parent"    # Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/binding/staging/MutableAction;",
            ">;",
            "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "instance":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/binding/staging/MutableAction;>;"
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;-><init>(Ljava/lang/Object;Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    .line 154
    return-void
.end method


# virtual methods
.method public isLastElement(Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;)Z
    .locals 1
    .param p1, "element"    # Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    .prologue
    .line 167
    sget-object v0, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionListHandler;->EL:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startElement(Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "element"    # Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 158
    sget-object v1, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionHandler;->EL:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, v1}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    new-instance v0, Lorg/teleal/cling/binding/staging/MutableAction;

    invoke-direct {v0}, Lorg/teleal/cling/binding/staging/MutableAction;-><init>()V

    .line 160
    .local v0, "action":Lorg/teleal/cling/binding/staging/MutableAction;
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionListHandler;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v1, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionHandler;

    invoke-direct {v1, v0, p0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionHandler;-><init>(Lorg/teleal/cling/binding/staging/MutableAction;Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    .line 163
    .end local v0    # "action":Lorg/teleal/cling/binding/staging/MutableAction;
    :cond_0
    return-void
.end method
