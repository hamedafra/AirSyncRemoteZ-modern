.class public Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableListHandler;
.super Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;
.source "UDA10ServiceDescriptorBinderSAXImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StateVariableListHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/teleal/cling/binding/staging/MutableStateVariable;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final EL:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->serviceStateTable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    sput-object v0, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableListHandler;->EL:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

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
            "Lorg/teleal/cling/binding/staging/MutableStateVariable;",
            ">;",
            "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "instance":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/binding/staging/MutableStateVariable;>;"
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;-><init>(Ljava/lang/Object;Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    .line 264
    return-void
.end method


# virtual methods
.method public isLastElement(Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;)Z
    .locals 1
    .param p1, "element"    # Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    .prologue
    .line 283
    sget-object v0, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableListHandler;->EL:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startElement(Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "element"    # Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 268
    sget-object v2, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->EL:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    new-instance v1, Lorg/teleal/cling/binding/staging/MutableStateVariable;

    invoke-direct {v1}, Lorg/teleal/cling/binding/staging/MutableStateVariable;-><init>()V

    .line 271
    .local v1, "stateVariable":Lorg/teleal/cling/binding/staging/MutableStateVariable;
    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->sendEvents:Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    invoke-virtual {v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "sendEventsAttributeValue":Ljava/lang/String;
    new-instance v3, Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    .line 273
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "YES"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-direct {v3, v2}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;-><init>(Z)V

    .line 272
    iput-object v3, v1, Lorg/teleal/cling/binding/staging/MutableStateVariable;->eventDetails:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    .line 276
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableListHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v2, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;

    invoke-direct {v2, v1, p0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;-><init>(Lorg/teleal/cling/binding/staging/MutableStateVariable;Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    .line 279
    .end local v0    # "sendEventsAttributeValue":Ljava/lang/String;
    .end local v1    # "stateVariable":Lorg/teleal/cling/binding/staging/MutableStateVariable;
    :cond_0
    return-void

    .line 273
    .restart local v0    # "sendEventsAttributeValue":Ljava/lang/String;
    .restart local v1    # "stateVariable":Lorg/teleal/cling/binding/staging/MutableStateVariable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
