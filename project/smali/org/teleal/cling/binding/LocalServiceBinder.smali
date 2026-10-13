.class public interface abstract Lorg/teleal/cling/binding/LocalServiceBinder;
.super Ljava/lang/Object;
.source "LocalServiceBinder.java"


# virtual methods
.method public abstract read(Ljava/lang/Class;)Lorg/teleal/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/teleal/cling/model/meta/LocalService;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation
.end method

.method public abstract read(Ljava/lang/Class;Lorg/teleal/cling/model/types/ServiceId;Lorg/teleal/cling/model/types/ServiceType;Z[Ljava/lang/Class;)Lorg/teleal/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/teleal/cling/model/types/ServiceId;",
            "Lorg/teleal/cling/model/types/ServiceType;",
            "Z[",
            "Ljava/lang/Class;",
            ")",
            "Lorg/teleal/cling/model/meta/LocalService;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation
.end method
