.class public Lorg/teleal/cling/binding/staging/MutableActionArgument;
.super Ljava/lang/Object;
.source "MutableActionArgument.java"


# instance fields
.field public direction:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

.field public name:Ljava/lang/String;

.field public relatedStateVariable:Ljava/lang/String;

.field public retval:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/teleal/cling/model/meta/ActionArgument;
    .locals 5

    .prologue
    .line 33
    new-instance v0, Lorg/teleal/cling/model/meta/ActionArgument;

    iget-object v1, p0, Lorg/teleal/cling/binding/staging/MutableActionArgument;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/teleal/cling/binding/staging/MutableActionArgument;->relatedStateVariable:Ljava/lang/String;

    iget-object v3, p0, Lorg/teleal/cling/binding/staging/MutableActionArgument;->direction:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    iget-boolean v4, p0, Lorg/teleal/cling/binding/staging/MutableActionArgument;->retval:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ActionArgument$Direction;Z)V

    return-object v0
.end method
