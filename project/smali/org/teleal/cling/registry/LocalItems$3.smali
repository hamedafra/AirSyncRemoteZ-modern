.class Lorg/teleal/cling/registry/LocalItems$3;
.super Ljava/lang/Object;
.source "LocalItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/registry/LocalItems;->advertiseAlive(Lorg/teleal/cling/model/meta/LocalDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/registry/LocalItems;

.field private final synthetic val$localDevice:Lorg/teleal/cling/model/meta/LocalDevice;


# direct methods
.method constructor <init>(Lorg/teleal/cling/registry/LocalItems;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/registry/LocalItems$3;->this$0:Lorg/teleal/cling/registry/LocalItems;

    iput-object p2, p0, Lorg/teleal/cling/registry/LocalItems$3;->val$localDevice:Lorg/teleal/cling/model/meta/LocalDevice;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 219
    :try_start_0
    invoke-static {}, Lorg/teleal/cling/registry/LocalItems;->access$2()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Sleeping some milliseconds to avoid flooding the network with ALIVE msgs"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lorg/teleal/cling/registry/LocalItems$3;->this$0:Lorg/teleal/cling/registry/LocalItems;

    iget-object v1, v1, Lorg/teleal/cling/registry/LocalItems;->randomGenerator:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    iget-object v1, p0, Lorg/teleal/cling/registry/LocalItems$3;->this$0:Lorg/teleal/cling/registry/LocalItems;

    iget-object v1, v1, Lorg/teleal/cling/registry/LocalItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryImpl;->getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/teleal/cling/registry/LocalItems$3;->val$localDevice:Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-interface {v1, v2}, Lorg/teleal/cling/protocol/ProtocolFactory;->createSendingNotificationAlive(Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/protocol/async/SendingNotificationAlive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/protocol/async/SendingNotificationAlive;->run()V

    .line 225
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/teleal/cling/registry/LocalItems;->access$2()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Background execution interrupted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method
