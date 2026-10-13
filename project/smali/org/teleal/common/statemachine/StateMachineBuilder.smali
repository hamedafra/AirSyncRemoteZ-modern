.class public Lorg/teleal/common/statemachine/StateMachineBuilder;
.super Ljava/lang/Object;
.source "StateMachineBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/Class;)Lorg/teleal/common/statemachine/StateMachine;
    .locals 1
    .param p1, "initialState"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/teleal/common/statemachine/StateMachine;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "stateMachine":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 29
    invoke-static {p0, p1, v0, v0}, Lorg/teleal/common/statemachine/StateMachineBuilder;->build(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/teleal/common/statemachine/StateMachine;

    move-result-object v0

    return-object v0
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/teleal/common/statemachine/StateMachine;
    .locals 4
    .param p1, "initialState"    # Ljava/lang/Class;
    .param p2, "constructorArgumentTypes"    # [Ljava/lang/Class;
    .param p3, "constructorArguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/teleal/common/statemachine/StateMachine;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "stateMachine":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    new-instance v3, Lorg/teleal/common/statemachine/StateMachineInvocationHandler;

    const-class v0, Lorg/teleal/common/statemachine/States;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/statemachine/States;

    invoke-interface {v0}, Lorg/teleal/common/statemachine/States;->value()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0, p1, p2, p3}, Lorg/teleal/common/statemachine/StateMachineInvocationHandler;-><init>(Ljava/util/List;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/statemachine/StateMachine;

    return-object v0
.end method
