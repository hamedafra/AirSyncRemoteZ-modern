.class public interface abstract Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;
.super Ljava/lang/Object;
.source "DeviceDescriptorBinder.java"


# virtual methods
.method public abstract buildDOM(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/profile/ControlPointInfo;Lorg/teleal/cling/model/Namespace;)Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation
.end method

.method public abstract describe(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/teleal/cling/model/meta/Device;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;,
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation
.end method

.method public abstract describe(Lorg/teleal/cling/model/meta/Device;Lorg/w3c/dom/Document;)Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/teleal/cling/model/meta/Device;",
            ">(TT;",
            "Lorg/w3c/dom/Document;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;,
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation
.end method

.method public abstract generate(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/profile/ControlPointInfo;Lorg/teleal/cling/model/Namespace;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation
.end method
