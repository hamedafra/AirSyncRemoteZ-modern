.class public Lorg/teleal/cling/model/meta/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Lorg/teleal/cling/model/Validatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/teleal/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/teleal/cling/model/Validatable;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final arguments:[Lorg/teleal/cling/model/meta/ActionArgument;

.field private final inputArguments:[Lorg/teleal/cling/model/meta/ActionArgument;

.field private final name:Ljava/lang/String;

.field private final outputArguments:[Lorg/teleal/cling/model/meta/ActionArgument;

.field private service:Lorg/teleal/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/teleal/cling/model/meta/Action;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/meta/Action;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/teleal/cling/model/meta/ActionArgument;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arguments"    # [Lorg/teleal/cling/model/meta/ActionArgument;

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/teleal/cling/model/meta/Action;->name:Ljava/lang/String;

    .line 47
    if-eqz p2, :cond_3

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v1, "inputList":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/ActionArgument;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v2, "outputList":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/ActionArgument;>;"
    array-length v4, p2

    :goto_0
    if-lt v3, v4, :cond_0

    .line 60
    iput-object p2, p0, Lorg/teleal/cling/model/meta/Action;->arguments:[Lorg/teleal/cling/model/meta/ActionArgument;

    .line 61
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/teleal/cling/model/meta/ActionArgument;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/teleal/cling/model/meta/ActionArgument;

    iput-object v3, p0, Lorg/teleal/cling/model/meta/Action;->inputArguments:[Lorg/teleal/cling/model/meta/ActionArgument;

    .line 62
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/teleal/cling/model/meta/ActionArgument;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/teleal/cling/model/meta/ActionArgument;

    iput-object v3, p0, Lorg/teleal/cling/model/meta/Action;->outputArguments:[Lorg/teleal/cling/model/meta/ActionArgument;

    .line 68
    .end local v1    # "inputList":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/ActionArgument;>;"
    .end local v2    # "outputList":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/ActionArgument;>;"
    :goto_1
    return-void

    .line 52
    .restart local v1    # "inputList":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/ActionArgument;>;"
    .restart local v2    # "outputList":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/ActionArgument;>;"
    :cond_0
    aget-object v0, p2, v3

    .line 53
    .local v0, "argument":Lorg/teleal/cling/model/meta/ActionArgument;
    invoke-virtual {v0, p0}, Lorg/teleal/cling/model/meta/ActionArgument;->setAction(Lorg/teleal/cling/model/meta/Action;)V

    .line 54
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/ActionArgument;->getDirection()Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    move-result-object v5

    sget-object v6, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->IN:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    invoke-virtual {v5, v6}, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/ActionArgument;->getDirection()Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    move-result-object v5

    sget-object v6, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->OUT:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    invoke-virtual {v5, v6}, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 57
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "argument":Lorg/teleal/cling/model/meta/ActionArgument;
    .end local v1    # "inputList":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/ActionArgument;>;"
    .end local v2    # "outputList":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/ActionArgument;>;"
    :cond_3
    new-array v4, v3, [Lorg/teleal/cling/model/meta/ActionArgument;

    iput-object v4, p0, Lorg/teleal/cling/model/meta/Action;->arguments:[Lorg/teleal/cling/model/meta/ActionArgument;

    .line 65
    new-array v4, v3, [Lorg/teleal/cling/model/meta/ActionArgument;

    iput-object v4, p0, Lorg/teleal/cling/model/meta/Action;->inputArguments:[Lorg/teleal/cling/model/meta/ActionArgument;

    .line 66
    new-array v3, v3, [Lorg/teleal/cling/model/meta/ActionArgument;

    iput-object v3, p0, Lorg/teleal/cling/model/meta/Action;->outputArguments:[Lorg/teleal/cling/model/meta/ActionArgument;

    goto :goto_1
.end method


# virtual methods
.method public deepCopy()Lorg/teleal/cling/model/meta/Action;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/teleal/cling/model/meta/Action",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v3

    array-length v3, v3

    new-array v0, v3, [Lorg/teleal/cling/model/meta/ActionArgument;

    .line 200
    .local v0, "actionArgumentsDupe":[Lorg/teleal/cling/model/meta/ActionArgument;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 205
    new-instance v3, Lorg/teleal/cling/model/meta/Action;

    .line 206
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-direct {v3, v4, v0}, Lorg/teleal/cling/model/meta/Action;-><init>(Ljava/lang/String;[Lorg/teleal/cling/model/meta/ActionArgument;)V

    return-object v3

    .line 201
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v3

    aget-object v1, v3, v2

    .line 202
    .local v1, "arg":Lorg/teleal/cling/model/meta/ActionArgument;
    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/ActionArgument;->deepCopy()Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v3

    aput-object v3, v0, v2

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getArguments()[Lorg/teleal/cling/model/meta/ActionArgument;
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Action;->arguments:[Lorg/teleal/cling/model/meta/ActionArgument;

    return-object v0
.end method

.method public getFirstInputArgument()Lorg/teleal/cling/model/meta/ActionArgument;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/teleal/cling/model/meta/ActionArgument",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->hasInputArguments()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No input arguments: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getInputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getFirstOutputArgument()Lorg/teleal/cling/model/meta/ActionArgument;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/teleal/cling/model/meta/ActionArgument",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->hasOutputArguments()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No output arguments: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getOutputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getInputArgument(Ljava/lang/String;)Lorg/teleal/cling/model/meta/ActionArgument;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/teleal/cling/model/meta/ActionArgument",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getInputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 110
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 107
    :cond_1
    aget-object v0, v2, v1

    .line 108
    .local v0, "arg":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    invoke-virtual {v0, p1}, Lorg/teleal/cling/model/meta/ActionArgument;->isNameOrAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getInputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/teleal/cling/model/meta/ActionArgument",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Action;->inputArguments:[Lorg/teleal/cling/model/meta/ActionArgument;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Action;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputArgument(Ljava/lang/String;)Lorg/teleal/cling/model/meta/ActionArgument;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/teleal/cling/model/meta/ActionArgument",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getOutputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 121
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 118
    :cond_1
    aget-object v0, v2, v1

    .line 119
    .local v0, "arg":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getOutputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/teleal/cling/model/meta/ActionArgument",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Action;->outputArguments:[Lorg/teleal/cling/model/meta/ActionArgument;

    return-object v0
.end method

.method public getService()Lorg/teleal/cling/model/meta/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Action;->service:Lorg/teleal/cling/model/meta/Service;

    return-object v0
.end method

.method public hasArguments()Z
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputArguments()Z
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getInputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getInputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOutputArguments()Z
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getOutputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getOutputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setService(Lorg/teleal/cling/model/meta/Service;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    .local p1, "service":Lorg/teleal/cling/model/meta/Service;, "TS;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Action;->service:Lorg/teleal/cling/model/meta/Service;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Final value has been set already, model is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iput-object p1, p0, Lorg/teleal/cling/model/meta/Action;->service:Lorg/teleal/cling/model/meta/Service;

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string v1, ", Arguments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    const-string v0, "NO ARGS"

    goto :goto_0
.end method

.method public validate()Ljava/util/List;
    .locals 17
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
    .line 141
    .local p0, "this":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v4, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    .line 144
    :cond_0
    new-instance v9, Lorg/teleal/cling/model/ValidationError;

    .line 145
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 146
    const-string v11, "name"

    .line 147
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Action without name of: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/model/meta/Action;->getArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v10

    array-length v11, v10

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v11, :cond_4

    .line 166
    const/4 v7, 0x0

    .line 167
    .local v7, "retValueArgument":Lorg/teleal/cling/model/meta/ActionArgument;
    const/4 v8, 0x0

    .line 168
    .local v8, "retValueArgumentIndex":I
    const/4 v5, 0x0

    .line 169
    .local v5, "i":I
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/model/meta/Action;->getArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v10

    array-length v11, v10

    const/4 v9, 0x0

    :goto_2
    if-lt v9, v11, :cond_6

    .line 181
    if-eqz v7, :cond_2

    .line 182
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    if-lt v6, v8, :cond_9

    .line 191
    .end local v6    # "j":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/teleal/cling/model/meta/Action;->arguments:[Lorg/teleal/cling/model/meta/ActionArgument;

    array-length v11, v10

    const/4 v9, 0x0

    :goto_4
    if-lt v9, v11, :cond_b

    .line 195
    return-object v4

    .line 149
    .end local v5    # "i":I
    .end local v7    # "retValueArgument":Lorg/teleal/cling/model/meta/ActionArgument;
    .end local v8    # "retValueArgumentIndex":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/teleal/cling/model/ModelUtil;->isValidUDAName(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 150
    sget-object v9, Lorg/teleal/cling/model/meta/Action;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "UPnP specification violation of: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v11

    invoke-virtual {v11}, Lorg/teleal/cling/model/meta/Service;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 151
    sget-object v9, Lorg/teleal/cling/model/meta/Action;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Invalid action name: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_4
    aget-object v2, v10, v9

    .line 157
    .local v2, "actionArgument":Lorg/teleal/cling/model/meta/ActionArgument;
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v12

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/ActionArgument;->getRelatedStateVariableName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/teleal/cling/model/meta/Service;->getStateVariable(Ljava/lang/String;)Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v12

    if-nez v12, :cond_5

    .line 158
    new-instance v12, Lorg/teleal/cling/model/ValidationError;

    .line 159
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 160
    const-string v14, "arguments"

    .line 161
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Action argument references an unknown state variable: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/ActionArgument;->getRelatedStateVariableName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v13, v14, v15}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 169
    .end local v2    # "actionArgument":Lorg/teleal/cling/model/meta/ActionArgument;
    .restart local v5    # "i":I
    .restart local v7    # "retValueArgument":Lorg/teleal/cling/model/meta/ActionArgument;
    .restart local v8    # "retValueArgumentIndex":I
    :cond_6
    aget-object v2, v10, v9

    .line 171
    .restart local v2    # "actionArgument":Lorg/teleal/cling/model/meta/ActionArgument;
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/ActionArgument;->isReturnValue()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 172
    if-eqz v7, :cond_7

    .line 173
    sget-object v12, Lorg/teleal/cling/model/meta/Action;->log:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "UPnP specification violation of: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v14

    invoke-virtual {v14}, Lorg/teleal/cling/model/meta/Service;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 174
    sget-object v12, Lorg/teleal/cling/model/meta/Action;->log:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Only one argument of action \'"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' can be <retval/>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 176
    :cond_7
    move-object v7, v2

    .line 177
    move v8, v5

    .line 179
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 169
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 183
    .end local v2    # "actionArgument":Lorg/teleal/cling/model/meta/ActionArgument;
    .restart local v6    # "j":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/model/meta/Action;->getArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v9

    aget-object v1, v9, v6

    .line 184
    .local v1, "a":Lorg/teleal/cling/model/meta/ActionArgument;
    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/ActionArgument;->getDirection()Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    move-result-object v9

    sget-object v10, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->OUT:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    if-ne v9, v10, :cond_a

    .line 185
    sget-object v9, Lorg/teleal/cling/model/meta/Action;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "UPnP specification violation of: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v11

    invoke-virtual {v11}, Lorg/teleal/cling/model/meta/Service;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 186
    sget-object v9, Lorg/teleal/cling/model/meta/Action;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Argument \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' of action \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' is <retval/> but not the first OUT argument"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 182
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 191
    .end local v1    # "a":Lorg/teleal/cling/model/meta/ActionArgument;
    .end local v6    # "j":I
    :cond_b
    aget-object v3, v10, v9

    .line 192
    .local v3, "argument":Lorg/teleal/cling/model/meta/ActionArgument;
    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/ActionArgument;->validate()Ljava/util/List;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4
.end method
