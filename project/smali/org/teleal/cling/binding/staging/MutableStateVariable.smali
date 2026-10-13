.class public Lorg/teleal/cling/binding/staging/MutableStateVariable;
.super Ljava/lang/Object;
.source "MutableStateVariable.java"


# instance fields
.field public allowedValueRange:Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;

.field public allowedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public dataType:Lorg/teleal/cling/model/types/Datatype;

.field public defaultValue:Ljava/lang/String;

.field public eventDetails:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/teleal/cling/model/meta/StateVariable;
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 41
    new-instance v8, Lorg/teleal/cling/model/meta/StateVariable;

    .line 42
    iget-object v9, p0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->name:Ljava/lang/String;

    .line 43
    new-instance v10, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    .line 44
    iget-object v11, p0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->dataType:Lorg/teleal/cling/model/types/Datatype;

    .line 45
    iget-object v12, p0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->defaultValue:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->allowedValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->allowedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 49
    :goto_0
    iget-object v2, p0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->allowedValueRange:Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;

    if-nez v2, :cond_2

    .line 43
    :goto_1
    invoke-direct {v10, v11, v12, v0, v1}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/String;[Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;)V

    .line 57
    iget-object v0, p0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->eventDetails:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    .line 41
    invoke-direct {v8, v9, v10, v0}, Lorg/teleal/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableTypeDetails;Lorg/teleal/cling/model/meta/StateVariableEventDetails;)V

    return-object v8

    .line 48
    :cond_1
    iget-object v0, p0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->allowedValues:Ljava/util/List;

    iget-object v2, p0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->allowedValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_2
    new-instance v1, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    .line 52
    iget-object v2, p0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->allowedValueRange:Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;

    iget-object v2, v2, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;->minimum:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 53
    iget-object v4, p0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->allowedValueRange:Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;

    iget-object v4, v4, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;->maximum:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 54
    iget-object v6, p0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->allowedValueRange:Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;

    iget-object v6, v6, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;->step:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 51
    invoke-direct/range {v1 .. v7}, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;-><init>(JJJ)V

    goto :goto_1
.end method
