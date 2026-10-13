.class public final enum Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;
.super Ljava/lang/Enum;
.source "Descriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/binding/xml/Descriptor$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ELEMENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum action:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum actionList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum allowedValue:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum allowedValueList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum allowedValueRange:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum argument:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum argumentList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum dataType:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum defaultValue:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum direction:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum major:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum maximum:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum minimum:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum minor:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum name:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum relatedStateVariable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum retval:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum scpd:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum serviceStateTable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum specVersion:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum stateVariable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

.field public static final enum step:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "scpd"

    invoke-direct {v0, v1, v3}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->scpd:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 78
    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "specVersion"

    invoke-direct {v0, v1, v4}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->specVersion:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "major"

    invoke-direct {v0, v1, v5}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->major:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "minor"

    invoke-direct {v0, v1, v6}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->minor:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 79
    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "actionList"

    invoke-direct {v0, v1, v7}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->actionList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "action"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->action:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "name"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 80
    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "argumentList"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->argumentList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "argument"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->argument:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "direction"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->direction:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "relatedStateVariable"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->relatedStateVariable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "retval"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->retval:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 81
    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "serviceStateTable"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->serviceStateTable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "stateVariable"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->stateVariable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "dataType"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->dataType:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "defaultValue"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->defaultValue:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 82
    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "allowedValueList"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "allowedValue"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValue:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "allowedValueRange"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueRange:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "minimum"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->minimum:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "maximum"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->maximum:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    new-instance v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    const-string v1, "step"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->step:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 76
    const/16 v0, 0x16

    new-array v0, v0, [Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->scpd:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->specVersion:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->major:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->minor:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->actionList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->action:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->argumentList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->argument:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->direction:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->relatedStateVariable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->retval:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->serviceStateTable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->stateVariable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->dataType:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->defaultValue:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValue:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueRange:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->minimum:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->maximum:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->step:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->ENUM$VALUES:[Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    return-object v0
.end method

.method public static valueOrNullOf(Ljava/lang/String;)Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 86
    :try_start_0
    invoke-static {p0}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 88
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static values()[Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->ENUM$VALUES:[Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public equals(Lorg/w3c/dom/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
