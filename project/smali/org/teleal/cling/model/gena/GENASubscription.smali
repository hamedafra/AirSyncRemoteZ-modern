.class public abstract Lorg/teleal/cling/model/gena/GENASubscription;
.super Ljava/lang/Object;
.source "GENASubscription.java"


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
.field protected actualDurationSeconds:I

.field protected currentSequence:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

.field protected currentValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/state/StateVariableValue",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field protected requestedDurationSeconds:I

.field protected service:Lorg/teleal/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field protected subscriptionId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/teleal/cling/model/meta/Service;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/teleal/cling/model/gena/GENASubscription;, "Lorg/teleal/cling/model/gena/GENASubscription<TS;>;"
    .local p1, "service":Lorg/teleal/cling/model/meta/Service;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x708

    iput v0, p0, Lorg/teleal/cling/model/gena/GENASubscription;->requestedDurationSeconds:I

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/gena/GENASubscription;->currentValues:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Lorg/teleal/cling/model/gena/GENASubscription;->service:Lorg/teleal/cling/model/meta/Service;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;I)V
    .locals 0
    .param p2, "requestedDurationSeconds"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/teleal/cling/model/gena/GENASubscription;, "Lorg/teleal/cling/model/gena/GENASubscription<TS;>;"
    .local p1, "service":Lorg/teleal/cling/model/meta/Service;, "TS;"
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/gena/GENASubscription;-><init>(Lorg/teleal/cling/model/meta/Service;)V

    .line 56
    iput p2, p0, Lorg/teleal/cling/model/gena/GENASubscription;->requestedDurationSeconds:I

    .line 57
    return-void
.end method


# virtual methods
.method public abstract established()V
.end method

.method public abstract eventReceived()V
.end method

.method public declared-synchronized getActualDurationSeconds()I
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lorg/teleal/cling/model/gena/GENASubscription;, "Lorg/teleal/cling/model/gena/GENASubscription<TS;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/teleal/cling/model/gena/GENASubscription;->actualDurationSeconds:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentSequence()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lorg/teleal/cling/model/gena/GENASubscription;, "Lorg/teleal/cling/model/gena/GENASubscription<TS;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/model/gena/GENASubscription;->currentSequence:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/state/StateVariableValue",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/teleal/cling/model/gena/GENASubscription;, "Lorg/teleal/cling/model/gena/GENASubscription<TS;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/model/gena/GENASubscription;->currentValues:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestedDurationSeconds()I
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lorg/teleal/cling/model/gena/GENASubscription;, "Lorg/teleal/cling/model/gena/GENASubscription<TS;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/teleal/cling/model/gena/GENASubscription;->requestedDurationSeconds:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getService()Lorg/teleal/cling/model/meta/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/teleal/cling/model/gena/GENASubscription;, "Lorg/teleal/cling/model/gena/GENASubscription<TS;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/model/gena/GENASubscription;->service:Lorg/teleal/cling/model/meta/Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSubscriptionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/teleal/cling/model/gena/GENASubscription;, "Lorg/teleal/cling/model/gena/GENASubscription<TS;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/model/gena/GENASubscription;->subscriptionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setActualSubscriptionDurationSeconds(I)V
    .locals 1
    .param p1, "seconds"    # I

    .prologue
    .line 80
    .local p0, "this":Lorg/teleal/cling/model/gena/GENASubscription;, "Lorg/teleal/cling/model/gena/GENASubscription<TS;>;"
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/teleal/cling/model/gena/GENASubscription;->actualDurationSeconds:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubscriptionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "subscriptionId"    # Ljava/lang/String;

    .prologue
    .line 68
    .local p0, "this":Lorg/teleal/cling/model/gena/GENASubscription;, "Lorg/teleal/cling/model/gena/GENASubscription<TS;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/teleal/cling/model/gena/GENASubscription;->subscriptionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    .local p0, "this":Lorg/teleal/cling/model/gena/GENASubscription;, "Lorg/teleal/cling/model/gena/GENASubscription<TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(GENASubscription, SID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/GENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SEQUENCE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/GENASubscription;->getCurrentSequence()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
