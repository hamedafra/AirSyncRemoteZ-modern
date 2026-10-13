.class public Lorg/teleal/cling/model/action/ActionArgumentValue;
.super Lorg/teleal/cling/model/VariableValue;
.source "ActionArgumentValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/teleal/cling/model/meta/Service;",
        ">",
        "Lorg/teleal/cling/model/VariableValue;"
    }
.end annotation


# instance fields
.field private final argument:Lorg/teleal/cling/model/meta/ActionArgument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/teleal/cling/model/meta/ActionArgument",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/ActionArgument;Ljava/lang/Object;)V
    .locals 2
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/ActionArgument",
            "<TS;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/teleal/cling/model/action/ActionArgumentValue;, "Lorg/teleal/cling/model/action/ActionArgumentValue<TS;>;"
    .local p1, "argument":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/ActionArgument;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/teleal/cling/model/VariableValue;-><init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/Object;)V

    .line 36
    iput-object p1, p0, Lorg/teleal/cling/model/action/ActionArgumentValue;->argument:Lorg/teleal/cling/model/meta/ActionArgument;

    .line 37
    return-void
.end method


# virtual methods
.method public getArgument()Lorg/teleal/cling/model/meta/ActionArgument;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/teleal/cling/model/meta/ActionArgument",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/teleal/cling/model/action/ActionArgumentValue;, "Lorg/teleal/cling/model/action/ActionArgumentValue<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/action/ActionArgumentValue;->argument:Lorg/teleal/cling/model/meta/ActionArgument;

    return-object v0
.end method
