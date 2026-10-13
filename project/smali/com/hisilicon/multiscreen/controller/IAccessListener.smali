.class public interface abstract Lcom/hisilicon/multiscreen/controller/IAccessListener;
.super Ljava/lang/Object;
.source "IAccessListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    }
.end annotation


# virtual methods
.method public abstract dealNetWorkLostEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
.end method

.method public abstract dealNetWorkNotWellEvent()V
.end method

.method public abstract dealReaveEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
.end method

.method public abstract dealSTBLeaveEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
.end method

.method public abstract dealSTBSuspendEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
.end method
