.class Lorg/teleal/cling/model/state/StateVariableAccessor$1AccessCommand;
.super Ljava/lang/Object;
.source "StateVariableAccessor.java"

# interfaces
.implements Lorg/teleal/cling/model/Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/model/state/StateVariableAccessor;->read(Lorg/teleal/cling/model/meta/StateVariable;Ljava/lang/Object;)Lorg/teleal/cling/model/state/StateVariableValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessCommand"
.end annotation


# instance fields
.field result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/teleal/cling/model/state/StateVariableAccessor;

.field private final synthetic val$serviceImpl:Ljava/lang/Object;

.field private final synthetic val$stateVariable:Lorg/teleal/cling/model/meta/StateVariable;


# direct methods
.method constructor <init>(Lorg/teleal/cling/model/state/StateVariableAccessor;Ljava/lang/Object;Lorg/teleal/cling/model/meta/StateVariable;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lorg/teleal/cling/model/state/StateVariableAccessor$1AccessCommand;->this$0:Lorg/teleal/cling/model/state/StateVariableAccessor;

    iput-object p2, p0, Lorg/teleal/cling/model/state/StateVariableAccessor$1AccessCommand;->val$serviceImpl:Ljava/lang/Object;

    iput-object p3, p0, Lorg/teleal/cling/model/state/StateVariableAccessor$1AccessCommand;->val$stateVariable:Lorg/teleal/cling/model/meta/StateVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/teleal/cling/model/ServiceManager;)V
    .locals 2
    .param p1, "serviceManager"    # Lorg/teleal/cling/model/ServiceManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lorg/teleal/cling/model/state/StateVariableAccessor$1AccessCommand;->this$0:Lorg/teleal/cling/model/state/StateVariableAccessor;

    iget-object v1, p0, Lorg/teleal/cling/model/state/StateVariableAccessor$1AccessCommand;->val$serviceImpl:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/state/StateVariableAccessor;->read(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/state/StateVariableAccessor$1AccessCommand;->result:Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lorg/teleal/cling/model/state/StateVariableAccessor$1AccessCommand;->val$stateVariable:Lorg/teleal/cling/model/meta/StateVariable;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/StateVariable;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/LocalService;

    iget-object v1, p0, Lorg/teleal/cling/model/state/StateVariableAccessor$1AccessCommand;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/meta/LocalService;->isStringConvertibleType(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/teleal/cling/model/state/StateVariableAccessor$1AccessCommand;->result:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/state/StateVariableAccessor$1AccessCommand;->result:Ljava/lang/Object;

    .line 44
    :cond_0
    return-void
.end method
