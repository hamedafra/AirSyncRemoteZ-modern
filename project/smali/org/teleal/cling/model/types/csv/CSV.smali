.class public abstract Lorg/teleal/cling/model/types/csv/CSV;
.super Ljava/util/ArrayList;
.source "CSV.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final datatype:Lorg/teleal/cling/model/types/Datatype$Builtin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lorg/teleal/cling/model/types/csv/CSV;, "Lorg/teleal/cling/model/types/csv/CSV<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p0}, Lorg/teleal/cling/model/types/csv/CSV;->getBuiltinDatatype()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/types/csv/CSV;->datatype:Lorg/teleal/cling/model/types/Datatype$Builtin;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/teleal/cling/model/types/csv/CSV;, "Lorg/teleal/cling/model/types/csv/CSV<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {p0}, Lorg/teleal/cling/model/types/csv/CSV;->getBuiltinDatatype()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/types/csv/CSV;->datatype:Lorg/teleal/cling/model/types/Datatype$Builtin;

    .line 54
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/types/csv/CSV;->parseString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/types/csv/CSV;->addAll(Ljava/util/Collection;)Z

    .line 55
    return-void
.end method


# virtual methods
.method protected getBuiltinDatatype()Lorg/teleal/cling/model/types/Datatype$Builtin;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/teleal/cling/model/types/csv/CSV;, "Lorg/teleal/cling/model/types/csv/CSV<TT;>;"
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/teleal/common/util/Reflections;->getTypeArguments(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 68
    .local v0, "csvType":Ljava/lang/Class;
    invoke-static {v0}, Lorg/teleal/cling/model/types/Datatype$Default;->getByJavaType(Ljava/lang/Class;)Lorg/teleal/cling/model/types/Datatype$Default;

    move-result-object v1

    .line 69
    .local v1, "defaultType":Lorg/teleal/cling/model/types/Datatype$Default;, "Lorg/teleal/cling/model/types/Datatype$Default;"
    if-nez v1, :cond_0

    .line 70
    new-instance v2, Lorg/teleal/cling/model/types/InvalidValueException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No built-in UPnP datatype for Java type of CSV: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_0
    invoke-virtual {v1}, Lorg/teleal/cling/model/types/Datatype$Default;->getBuiltinType()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v2

    return-object v2
.end method

.method protected parseString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/teleal/cling/model/types/csv/CSV;, "Lorg/teleal/cling/model/types/csv/CSV<TT;>;"
    invoke-static {p1}, Lorg/teleal/cling/model/ModelUtil;->fromCommaSeparatedList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "strings":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v2, "values":Ljava/util/List;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 63
    return-object v2

    .line 60
    :cond_0
    aget-object v0, v1, v3

    .line 61
    .local v0, "string":Ljava/lang/String;
    iget-object v5, p0, Lorg/teleal/cling/model/types/csv/CSV;->datatype:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v5}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v5

    invoke-interface {v5, v0}, Lorg/teleal/cling/model/types/Datatype;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    .local p0, "this":Lorg/teleal/cling/model/types/csv/CSV;, "Lorg/teleal/cling/model/types/csv/CSV<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "stringValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/types/csv/CSV;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/teleal/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 78
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Object;

    .line 79
    .local v1, "t":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lorg/teleal/cling/model/types/csv/CSV;->datatype:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v3}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/teleal/cling/model/types/Datatype;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
