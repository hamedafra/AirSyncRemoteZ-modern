.class public Lorg/teleal/cling/model/state/StateVariableValue;
.super Lorg/teleal/cling/model/VariableValue;
.source "StateVariableValue.java"


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
.field private stateVariable:Lorg/teleal/cling/model/meta/StateVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/teleal/cling/model/meta/StateVariable",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/StateVariable;Ljava/lang/Object;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/StateVariable",
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
    .local p0, "this":Lorg/teleal/cling/model/state/StateVariableValue;, "Lorg/teleal/cling/model/state/StateVariableValue<TS;>;"
    .local p1, "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;, "Lorg/teleal/cling/model/meta/StateVariable<TS;>;"
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/teleal/cling/model/VariableValue;-><init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/Object;)V

    .line 36
    iput-object p1, p0, Lorg/teleal/cling/model/state/StateVariableValue;->stateVariable:Lorg/teleal/cling/model/meta/StateVariable;

    .line 37
    return-void
.end method


# virtual methods
.method public getStateVariable()Lorg/teleal/cling/model/meta/StateVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/teleal/cling/model/meta/StateVariable",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/teleal/cling/model/state/StateVariableValue;, "Lorg/teleal/cling/model/state/StateVariableValue<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/state/StateVariableValue;->stateVariable:Lorg/teleal/cling/model/meta/StateVariable;

    return-object v0
.end method
