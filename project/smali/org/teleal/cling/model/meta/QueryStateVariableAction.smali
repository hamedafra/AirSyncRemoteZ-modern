.class public Lorg/teleal/cling/model/meta/QueryStateVariableAction;
.super Lorg/teleal/cling/model/meta/Action;
.source "QueryStateVariableAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/teleal/cling/model/meta/Service;",
        ">",
        "Lorg/teleal/cling/model/meta/Action",
        "<TS;>;"
    }
.end annotation


# static fields
.field public static final ACTION_NAME:Ljava/lang/String; = "QueryStateVariable"

.field public static final VIRTUAL_STATEVARIABLE_INPUT:Ljava/lang/String; = "VirtualQueryActionInput"

.field public static final VIRTUAL_STATEVARIABLE_OUTPUT:Ljava/lang/String; = "VirtualQueryActionOutput"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lorg/teleal/cling/model/meta/QueryStateVariableAction;, "Lorg/teleal/cling/model/meta/QueryStateVariableAction<TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/meta/QueryStateVariableAction;-><init>(Lorg/teleal/cling/model/meta/Service;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/teleal/cling/model/meta/QueryStateVariableAction;, "Lorg/teleal/cling/model/meta/QueryStateVariableAction<TS;>;"
    .local p1, "service":Lorg/teleal/cling/model/meta/Service;, "TS;"
    const-string v0, "QueryStateVariable"

    .line 45
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/teleal/cling/model/meta/ActionArgument;

    const/4 v2, 0x0

    .line 46
    new-instance v3, Lorg/teleal/cling/model/meta/ActionArgument;

    const-string v4, "varName"

    const-string v5, "VirtualQueryActionInput"

    sget-object v6, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->IN:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    invoke-direct {v3, v4, v5, v6}, Lorg/teleal/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ActionArgument$Direction;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 47
    new-instance v3, Lorg/teleal/cling/model/meta/ActionArgument;

    const-string v4, "return"

    const-string v5, "VirtualQueryActionOutput"

    sget-object v6, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->OUT:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    invoke-direct {v3, v4, v5, v6}, Lorg/teleal/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ActionArgument$Direction;)V

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/teleal/cling/model/meta/Action;-><init>(Ljava/lang/String;[Lorg/teleal/cling/model/meta/ActionArgument;)V

    .line 50
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/meta/QueryStateVariableAction;->setService(Lorg/teleal/cling/model/meta/Service;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lorg/teleal/cling/model/meta/QueryStateVariableAction;, "Lorg/teleal/cling/model/meta/QueryStateVariableAction<TS;>;"
    const-string v0, "QueryStateVariable"

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/teleal/cling/model/meta/QueryStateVariableAction;, "Lorg/teleal/cling/model/meta/QueryStateVariableAction<TS;>;"
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method
