.class public Lorg/teleal/cling/model/DefaultServiceManager;
.super Ljava/lang/Object;
.source "DefaultServiceManager.java"

# interfaces
.implements Lorg/teleal/cling/model/ServiceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/model/DefaultServiceManager$DefaultPropertyChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/teleal/cling/model/ServiceManager",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field protected final service:Lorg/teleal/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/teleal/cling/model/meta/LocalService",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final serviceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected serviceImpl:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/teleal/cling/model/DefaultServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/LocalService",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/teleal/cling/model/DefaultServiceManager;, "Lorg/teleal/cling/model/DefaultServiceManager<TT;>;"
    .local p1, "service":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/model/DefaultServiceManager;-><init>(Lorg/teleal/cling/model/meta/LocalService;Ljava/lang/Class;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/LocalService;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/LocalService",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/teleal/cling/model/DefaultServiceManager;, "Lorg/teleal/cling/model/DefaultServiceManager<TT;>;"
    .local p1, "service":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<TT;>;"
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lorg/teleal/cling/model/DefaultServiceManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 68
    iput-object p1, p0, Lorg/teleal/cling/model/DefaultServiceManager;->service:Lorg/teleal/cling/model/meta/LocalService;

    .line 69
    iput-object p2, p0, Lorg/teleal/cling/model/DefaultServiceManager;->serviceClass:Ljava/lang/Class;

    .line 70
    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/teleal/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected createPropertyChangeListener(Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/beans/PropertyChangeListener;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lorg/teleal/cling/model/DefaultServiceManager;, "Lorg/teleal/cling/model/DefaultServiceManager<TT;>;"
    .local p1, "serviceImpl":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/teleal/cling/model/DefaultServiceManager$DefaultPropertyChangeListener;

    invoke-direct {v0, p0}, Lorg/teleal/cling/model/DefaultServiceManager$DefaultPropertyChangeListener;-><init>(Lorg/teleal/cling/model/DefaultServiceManager;)V

    return-object v0
.end method

.method protected createPropertyChangeSupport(Ljava/lang/Object;)Ljava/beans/PropertyChangeSupport;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/beans/PropertyChangeSupport;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lorg/teleal/cling/model/DefaultServiceManager;, "Lorg/teleal/cling/model/DefaultServiceManager<TT;>;"
    .local p1, "serviceImpl":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "propertyChangeSupport"

    invoke-static {v1, v2}, Lorg/teleal/common/util/Reflections;->getGetterMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "m":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 184
    const-class v1, Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    sget-object v1, Lorg/teleal/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Service implementation instance offers PropertyChangeSupport, using that: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeSupport;

    .line 189
    :goto_0
    return-object v1

    .line 188
    :cond_0
    sget-object v1, Lorg/teleal/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating new PropertyChangeSupport for service implementation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 189
    new-instance v1, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v1, p1}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected createServiceInstance()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lorg/teleal/cling/model/DefaultServiceManager;, "Lorg/teleal/cling/model/DefaultServiceManager<TT;>;"
    iget-object v1, p0, Lorg/teleal/cling/model/DefaultServiceManager;->serviceClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Subclass has to provide service class or override createServiceInstance()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/teleal/cling/model/DefaultServiceManager;->serviceClass:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/teleal/cling/model/meta/LocalService;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->getService()Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 177
    :goto_0
    return-object v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lorg/teleal/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating new service implementation instance with no-arg constructor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/teleal/cling/model/DefaultServiceManager;->serviceClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lorg/teleal/cling/model/DefaultServiceManager;->serviceClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public execute(Lorg/teleal/cling/model/Command;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/Command",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lorg/teleal/cling/model/DefaultServiceManager;, "Lorg/teleal/cling/model/DefaultServiceManager<TT;>;"
    .local p1, "cmd":Lorg/teleal/cling/model/Command;, "Lorg/teleal/cling/model/Command<TT;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->lock()V

    .line 126
    :try_start_0
    invoke-interface {p1, p0}, Lorg/teleal/cling/model/Command;->execute(Lorg/teleal/cling/model/ServiceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->unlock()V

    .line 130
    return-void

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->unlock()V

    .line 129
    throw v0
.end method

.method public getImplementation()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/teleal/cling/model/DefaultServiceManager;, "Lorg/teleal/cling/model/DefaultServiceManager<TT;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->lock()V

    .line 102
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/model/DefaultServiceManager;->serviceImpl:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->init()V

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/model/DefaultServiceManager;->serviceImpl:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->unlock()V

    .line 105
    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->unlock()V

    .line 108
    throw v0
.end method

.method protected getLockTimeoutMillis()I
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lorg/teleal/cling/model/DefaultServiceManager;, "Lorg/teleal/cling/model/DefaultServiceManager<TT;>;"
    const/16 v0, 0x1f4

    return v0
.end method

.method public getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lorg/teleal/cling/model/DefaultServiceManager;, "Lorg/teleal/cling/model/DefaultServiceManager<TT;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->lock()V

    .line 114
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/model/DefaultServiceManager;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->init()V

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/model/DefaultServiceManager;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->unlock()V

    .line 117
    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->unlock()V

    .line 120
    throw v0
.end method

.method public getService()Lorg/teleal/cling/model/meta/LocalService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/teleal/cling/model/meta/LocalService",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/teleal/cling/model/DefaultServiceManager;, "Lorg/teleal/cling/model/DefaultServiceManager<TT;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/DefaultServiceManager;->service:Lorg/teleal/cling/model/meta/LocalService;

    return-object v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 154
    .local p0, "this":Lorg/teleal/cling/model/DefaultServiceManager;, "Lorg/teleal/cling/model/DefaultServiceManager<TT;>;"
    sget-object v1, Lorg/teleal/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    const-string v2, "No service implementation instance available, initializing..."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->createServiceInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/model/DefaultServiceManager;->serviceImpl:Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lorg/teleal/cling/model/DefaultServiceManager;->serviceImpl:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/model/DefaultServiceManager;->createPropertyChangeSupport(Ljava/lang/Object;)Ljava/beans/PropertyChangeSupport;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/model/DefaultServiceManager;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 161
    iget-object v1, p0, Lorg/teleal/cling/model/DefaultServiceManager;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    iget-object v2, p0, Lorg/teleal/cling/model/DefaultServiceManager;->serviceImpl:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lorg/teleal/cling/model/DefaultServiceManager;->createPropertyChangeListener(Ljava/lang/Object;)Ljava/beans/PropertyChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not initialize implementation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected lock()V
    .locals 5

    .prologue
    .line 76
    .local p0, "this":Lorg/teleal/cling/model/DefaultServiceManager;, "Lorg/teleal/cling/model/DefaultServiceManager<TT;>;"
    :try_start_0
    iget-object v1, p0, Lorg/teleal/cling/model/DefaultServiceManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->getLockTimeoutMillis()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    sget-object v1, Lorg/teleal/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    const-string v2, "Acquired lock"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 84
    return-void

    .line 79
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to acquire lock in milliseconds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->getLockTimeoutMillis()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to acquire lock:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readEventedStateVariableValues()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/state/StateVariableValue;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lorg/teleal/cling/model/DefaultServiceManager;, "Lorg/teleal/cling/model/DefaultServiceManager<TT;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->lock()V

    .line 135
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v2, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/state/StateVariableValue;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->getService()Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/LocalService;->getStateVariables()[Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v4

    array-length v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->unlock()V

    .line 147
    return-object v2

    .line 136
    :cond_0
    :try_start_1
    aget-object v1, v4, v3

    .line 137
    .local v1, "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/StateVariable;->getEventDetails()Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->isSendEvents()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 139
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->getService()Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/teleal/cling/model/meta/LocalService;->getAccessor(Lorg/teleal/cling/model/meta/StateVariable;)Lorg/teleal/cling/model/state/StateVariableAccessor;

    move-result-object v0

    .line 140
    .local v0, "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    if-nez v0, :cond_1

    .line 141
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No accessor for evented state variable"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .end local v0    # "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    .end local v1    # "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    .end local v2    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/state/StateVariableValue;>;"
    :catchall_0
    move-exception v3

    .line 149
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->unlock()V

    .line 150
    throw v3

    .line 143
    .restart local v0    # "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    .restart local v1    # "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    .restart local v2    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/state/StateVariableValue;>;"
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/teleal/cling/model/DefaultServiceManager;->getImplementation()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lorg/teleal/cling/model/state/StateVariableAccessor;->read(Lorg/teleal/cling/model/meta/StateVariable;Ljava/lang/Object;)Lorg/teleal/cling/model/state/StateVariableValue;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .end local v0    # "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    .local p0, "this":Lorg/teleal/cling/model/DefaultServiceManager;, "Lorg/teleal/cling/model/DefaultServiceManager<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Implementation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/cling/model/DefaultServiceManager;->serviceImpl:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected unlock()V
    .locals 2

    .prologue
    .line 87
    .local p0, "this":Lorg/teleal/cling/model/DefaultServiceManager;, "Lorg/teleal/cling/model/DefaultServiceManager<TT;>;"
    sget-object v0, Lorg/teleal/cling/model/DefaultServiceManager;->log:Ljava/util/logging/Logger;

    const-string v1, "Releasing lock"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/teleal/cling/model/DefaultServiceManager;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    return-void
.end method
