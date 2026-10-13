.class public interface abstract Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;
.super Ljava/lang/Object;
.source "ServiceDescriptorBinder.java"


# virtual methods
.method public abstract buildDOM(Lorg/teleal/cling/model/meta/Service;)Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation
.end method

.method public abstract describe(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;)Lorg/teleal/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/teleal/cling/model/meta/Service;",
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

.method public abstract describe(Lorg/teleal/cling/model/meta/Service;Lorg/w3c/dom/Document;)Lorg/teleal/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/teleal/cling/model/meta/Service;",
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

.method public abstract generate(Lorg/teleal/cling/model/meta/Service;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation
.end method
