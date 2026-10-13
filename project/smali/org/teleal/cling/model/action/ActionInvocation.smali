.class public Lorg/teleal/cling/model/action/ActionInvocation;
.super Ljava/lang/Object;
.source "ActionInvocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/teleal/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final action:Lorg/teleal/cling/model/meta/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/teleal/cling/model/meta/Action",
            "<TS;>;"
        }
    .end annotation
.end field

.field protected failure:Lorg/teleal/cling/model/action/ActionException;

.field protected input:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field protected output:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/action/ActionException;)V
    .locals 2
    .param p1, "failure"    # Lorg/teleal/cling/model/action/ActionException;

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    .line 43
    iput-object v1, p0, Lorg/teleal/cling/model/action/ActionInvocation;->failure:Lorg/teleal/cling/model/action/ActionException;

    .line 64
    iput-object v1, p0, Lorg/teleal/cling/model/action/ActionInvocation;->action:Lorg/teleal/cling/model/meta/Action;

    .line 65
    iput-object v1, p0, Lorg/teleal/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    .line 66
    iput-object v1, p0, Lorg/teleal/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    .line 67
    iput-object p1, p0, Lorg/teleal/cling/model/action/ActionInvocation;->failure:Lorg/teleal/cling/model/action/ActionException;

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/Action",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    .local p1, "action":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0, v0}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/action/ActionArgumentValue;[Lorg/teleal/cling/model/action/ActionArgumentValue;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/action/ActionArgumentValue;)V
    .locals 1
    .param p2, "input"    # [Lorg/teleal/cling/model/action/ActionArgumentValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/Action",
            "<TS;>;[",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    .local p1, "action":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/action/ActionArgumentValue;[Lorg/teleal/cling/model/action/ActionArgumentValue;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/action/ActionArgumentValue;[Lorg/teleal/cling/model/action/ActionArgumentValue;)V
    .locals 2
    .param p2, "input"    # [Lorg/teleal/cling/model/action/ActionArgumentValue;
    .param p3, "output"    # [Lorg/teleal/cling/model/action/ActionArgumentValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/Action",
            "<TS;>;[",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;[",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    .local p1, "action":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->failure:Lorg/teleal/cling/model/action/ActionException;

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Action can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lorg/teleal/cling/model/action/ActionInvocation;->action:Lorg/teleal/cling/model/meta/Action;

    .line 59
    invoke-virtual {p0, p2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput([Lorg/teleal/cling/model/action/ActionArgumentValue;)V

    .line 60
    invoke-virtual {p0, p3}, Lorg/teleal/cling/model/action/ActionInvocation;->setOutput([Lorg/teleal/cling/model/action/ActionArgumentValue;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getAction()Lorg/teleal/cling/model/meta/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/teleal/cling/model/meta/Action",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->action:Lorg/teleal/cling/model/meta/Action;

    return-object v0
.end method

.method public getFailure()Lorg/teleal/cling/model/action/ActionException;
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->failure:Lorg/teleal/cling/model/action/ActionException;

    return-object v0
.end method

.method public getInput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;
    .locals 1
    .param p1, "argumentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getInputArgument(Ljava/lang/String;)Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->getInput(Lorg/teleal/cling/model/meta/ActionArgument;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v0

    return-object v0
.end method

.method public getInput(Lorg/teleal/cling/model/meta/ActionArgument;)Lorg/teleal/cling/model/action/ActionArgumentValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/ActionArgument",
            "<TS;>;)",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    .local p1, "argument":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    return-object v0
.end method

.method public getInput()[Lorg/teleal/cling/model/action/ActionArgumentValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/action/ActionArgumentValue;

    return-object v0
.end method

.method protected getInputArgument(Ljava/lang/String;)Lorg/teleal/cling/model/meta/ActionArgument;
    .locals 4
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
    .line 137
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/teleal/cling/model/meta/Action;->getInputArgument(Ljava/lang/String;)Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v0

    .line 138
    .local v0, "argument":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Argument not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_0
    return-object v0
.end method

.method public getInputMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;
    .locals 1
    .param p1, "argumentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutputArgument(Ljava/lang/String;)Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Lorg/teleal/cling/model/meta/ActionArgument;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v0

    return-object v0
.end method

.method public getOutput(Lorg/teleal/cling/model/meta/ActionArgument;)Lorg/teleal/cling/model/action/ActionArgumentValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/ActionArgument",
            "<TS;>;)",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    .local p1, "argument":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    return-object v0
.end method

.method public getOutput()[Lorg/teleal/cling/model/action/ActionArgumentValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/action/ActionArgumentValue;

    return-object v0
.end method

.method protected getOutputArgument(Ljava/lang/String;)Lorg/teleal/cling/model/meta/ActionArgument;
    .locals 4
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
    .line 143
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/teleal/cling/model/meta/Action;->getOutputArgument(Ljava/lang/String;)Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v0

    .line 144
    .local v0, "argument":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Argument not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_0
    return-object v0
.end method

.method public getOutputMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setFailure(Lorg/teleal/cling/model/action/ActionException;)V
    .locals 0
    .param p1, "failure"    # Lorg/teleal/cling/model/action/ActionException;

    .prologue
    .line 157
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    iput-object p1, p0, Lorg/teleal/cling/model/action/ActionInvocation;->failure:Lorg/teleal/cling/model/action/ActionException;

    .line 158
    return-void
.end method

.method public setInput(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "argumentName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    new-instance v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getInputArgument(Ljava/lang/String;)Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/teleal/cling/model/action/ActionArgumentValue;-><init>(Lorg/teleal/cling/model/meta/ActionArgument;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Lorg/teleal/cling/model/action/ActionArgumentValue;)V

    .line 108
    return-void
.end method

.method public setInput(Lorg/teleal/cling/model/action/ActionArgumentValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    .local p1, "value":Lorg/teleal/cling/model/action/ActionArgumentValue;, "Lorg/teleal/cling/model/action/ActionArgumentValue<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getArgument()Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public setInput([Lorg/teleal/cling/model/action/ActionArgumentValue;)V
    .locals 5
    .param p1, "input"    # [Lorg/teleal/cling/model/action/ActionArgumentValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    if-nez p1, :cond_1

    .line 119
    :cond_0
    return-void

    .line 116
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 117
    .local v0, "argumentValue":Lorg/teleal/cling/model/action/ActionArgumentValue;, "Lorg/teleal/cling/model/action/ActionArgumentValue<TS;>;"
    iget-object v3, p0, Lorg/teleal/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getArgument()Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setOutput(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "argumentName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    new-instance v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutputArgument(Ljava/lang/String;)Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/teleal/cling/model/action/ActionArgumentValue;-><init>(Lorg/teleal/cling/model/meta/ActionArgument;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->setOutput(Lorg/teleal/cling/model/action/ActionArgumentValue;)V

    .line 123
    return-void
.end method

.method public setOutput(Lorg/teleal/cling/model/action/ActionArgumentValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    .local p1, "value":Lorg/teleal/cling/model/action/ActionArgumentValue;, "Lorg/teleal/cling/model/action/ActionArgumentValue<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getArgument()Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public setOutput([Lorg/teleal/cling/model/action/ActionArgumentValue;)V
    .locals 5
    .param p1, "output"    # [Lorg/teleal/cling/model/action/ActionArgumentValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/teleal/cling/model/action/ActionArgumentValue",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    if-nez p1, :cond_1

    .line 134
    :cond_0
    return-void

    .line 131
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 132
    .local v0, "argumentValue":Lorg/teleal/cling/model/action/ActionArgumentValue;, "Lorg/teleal/cling/model/action/ActionArgumentValue<TS;>;"
    iget-object v3, p0, Lorg/teleal/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getArgument()Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    .local p0, "this":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
