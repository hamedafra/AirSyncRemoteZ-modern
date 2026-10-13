.class public Lorg/teleal/common/mock/http/MockHttpSession;
.super Ljava/lang/Object;
.source "MockHttpSession.java"

# interfaces
.implements Ljavax/servlet/http/HttpSession;


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isInvalid:Z

.field private maxInactiveInterval:I

.field private servletContext:Ljavax/servlet/ServletContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpSession;->attributes:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/ServletContext;)V
    .locals 1
    .param p1, "servletContext"    # Ljavax/servlet/ServletContext;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpSession;->attributes:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpSession;->servletContext:Ljavax/servlet/ServletContext;

    .line 42
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpSession;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lorg/teleal/common/mock/http/IteratorEnumeration;

    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpSession;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/common/mock/http/IteratorEnumeration;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpSession;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 2

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxInactiveInterval()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/teleal/common/mock/http/MockHttpSession;->maxInactiveInterval:I

    return v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpSession;->servletContext:Ljavax/servlet/ServletContext;

    return-object v0
.end method

.method public getSessionContext()Ljavax/servlet/http/HttpSessionContext;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lorg/teleal/common/mock/http/MockHttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpSession;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpSession;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/teleal/common/mock/http/MockHttpSession;->isInvalid:Z

    .line 132
    return-void
.end method

.method public isInvalid()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lorg/teleal/common/mock/http/MockHttpSession;->isInvalid:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 115
    invoke-virtual {p0, p1, p2}, Lorg/teleal/common/mock/http/MockHttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpSession;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lorg/teleal/common/mock/http/MockHttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 103
    if-nez p2, :cond_0

    .line 105
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpSession;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpSession;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setMaxInactiveInterval(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 68
    iput p1, p0, Lorg/teleal/common/mock/http/MockHttpSession;->maxInactiveInterval:I

    .line 69
    return-void
.end method
