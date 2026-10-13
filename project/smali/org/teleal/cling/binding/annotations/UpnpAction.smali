.class public interface abstract annotation Lorg/teleal/cling/binding/annotations/UpnpAction;
.super Ljava/lang/Object;
.source "UpnpAction.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/teleal/cling/binding/annotations/UpnpAction;
        name = ""
        out = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method

.method public abstract out()[Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
.end method
