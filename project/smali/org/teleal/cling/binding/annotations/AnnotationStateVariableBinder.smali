.class public Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;
.super Ljava/lang/Object;
.source "AnnotationStateVariableBinder.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected accessor:Lorg/teleal/cling/model/state/StateVariableAccessor;

.field protected annotation:Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

.field protected name:Ljava/lang/String;

.field protected stringConvertibleTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/binding/annotations/UpnpStateVariable;Ljava/lang/String;Lorg/teleal/cling/model/state/StateVariableAccessor;Ljava/util/Set;)V
    .locals 0
    .param p1, "annotation"    # Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "accessor"    # Lorg/teleal/cling/model/state/StateVariableAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/binding/annotations/UpnpStateVariable;",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/state/StateVariableAccessor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p4, "stringConvertibleTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->annotation:Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    .line 47
    iput-object p2, p0, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->name:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->accessor:Lorg/teleal/cling/model/state/StateVariableAccessor;

    .line 49
    iput-object p4, p0, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->stringConvertibleTypes:Ljava/util/Set;

    .line 50
    return-void
.end method


# virtual methods
.method protected createDatatype()Lorg/teleal/cling/model/types/Datatype;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->datatype()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "declaredDatatype":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/teleal/cling/model/state/StateVariableAccessor;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 174
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/teleal/cling/model/state/StateVariableAccessor;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/state/StateVariableAccessor;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 175
    .local v3, "returnType":Ljava/lang/Class;
    sget-object v4, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Using accessor return type as state variable type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getStringConvertibleTypes()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/teleal/cling/model/ModelUtil;->isStringConvertibleType(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    sget-object v4, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    const-string v5, "Return type is string-convertible, using string datatype"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 180
    sget-object v4, Lorg/teleal/cling/model/types/Datatype$Default;->STRING:Lorg/teleal/cling/model/types/Datatype$Default;

    invoke-virtual {v4}, Lorg/teleal/cling/model/types/Datatype$Default;->getBuiltinType()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v4

    .line 208
    .end local v3    # "returnType":Ljava/lang/Class;
    :goto_0
    return-object v4

    .line 182
    .restart local v3    # "returnType":Ljava/lang/Class;
    :cond_0
    invoke-static {v3}, Lorg/teleal/cling/model/types/Datatype$Default;->getByJavaType(Ljava/lang/Class;)Lorg/teleal/cling/model/types/Datatype$Default;

    move-result-object v2

    .line 183
    .local v2, "defaultDatatype":Lorg/teleal/cling/model/types/Datatype$Default;, "Lorg/teleal/cling/model/types/Datatype$Default;"
    if-eqz v2, :cond_1

    .line 184
    sget-object v4, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Return type has default UPnP datatype: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2}, Lorg/teleal/cling/model/types/Datatype$Default;->getBuiltinType()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v4

    goto :goto_0

    .line 191
    .end local v2    # "defaultDatatype":Lorg/teleal/cling/model/types/Datatype$Default;, "Lorg/teleal/cling/model/types/Datatype$Default;"
    .end local v3    # "returnType":Ljava/lang/Class;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 192
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->allowedValues()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-gtz v4, :cond_3

    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->allowedValuesEnum()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_4

    .line 193
    :cond_3
    sget-object v4, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    const-string v5, "State variable has restricted allowed values, hence using \'string\' datatype"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 194
    const-string v1, "string"

    .line 198
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    .line 199
    :cond_5
    new-instance v4, Lorg/teleal/cling/binding/LocalServiceBindingException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not detect datatype of state variable: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 202
    :cond_6
    sget-object v4, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Trying to find built-in UPnP datatype for detected name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 205
    invoke-static {v1}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getByDescriptorName(Ljava/lang/String;)Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v0

    .line 206
    .local v0, "builtin":Lorg/teleal/cling/model/types/Datatype$Builtin;, "Lorg/teleal/cling/model/types/Datatype$Builtin;"
    if-eqz v0, :cond_7

    .line 207
    sget-object v4, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Found built-in UPnP datatype: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v4

    goto/16 :goto_0

    .line 211
    :cond_7
    new-instance v4, Lorg/teleal/cling/binding/LocalServiceBindingException;

    const-string v5, "No built-in UPnP datatype found, using CustomDataType (TODO: NOT IMPLEMENTED)"

    invoke-direct {v4, v5}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected createDefaultValue(Lorg/teleal/cling/model/types/Datatype;)Ljava/lang/String;
    .locals 4
    .param p1, "datatype"    # Lorg/teleal/cling/model/types/Datatype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->defaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->defaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/teleal/cling/model/types/Datatype;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    sget-object v1, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found state variable default value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->defaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->defaultValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 231
    :goto_0
    return-object v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Default value doesn\'t match datatype of state variable \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-direct {v1, v2}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected createStateVariable()Lorg/teleal/cling/model/meta/StateVariable;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .prologue
    .line 70
    sget-object v16, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Creating state variable \'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' with accessor: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/teleal/cling/model/state/StateVariableAccessor;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->createDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v4

    .line 76
    .local v4, "datatype":Lorg/teleal/cling/model/types/Datatype;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->createDefaultValue(Lorg/teleal/cling/model/types/Datatype;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "defaultValue":Ljava/lang/String;
    const/4 v3, 0x0

    .line 80
    .local v3, "allowedValues":[Ljava/lang/String;
    sget-object v16, Lorg/teleal/cling/model/types/Datatype$Builtin;->STRING:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-interface {v4}, Lorg/teleal/cling/model/types/Datatype;->getBuiltin()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/teleal/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 82
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->allowedValues()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_0

    .line 83
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->allowedValues()[Ljava/lang/String;

    move-result-object v3

    .line 92
    :goto_0
    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    .line 95
    const/4 v10, 0x0

    .line 96
    .local v10, "foundValue":Z
    array-length v0, v3

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    .line 102
    :goto_2
    if-nez v10, :cond_5

    .line 103
    new-instance v16, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 104
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Default value \'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' is not in allowed values of: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 103
    invoke-direct/range {v16 .. v17}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 84
    .end local v10    # "foundValue":Z
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->allowedValuesEnum()Ljava/lang/Class;

    move-result-object v16

    sget-object v17, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 85
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->allowedValuesEnum()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAllowedValues(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v3

    .line 86
    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/teleal/cling/model/state/StateVariableAccessor;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/teleal/cling/model/state/StateVariableAccessor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/teleal/cling/model/state/StateVariableAccessor;->getReturnType()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->isEnum()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 87
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/teleal/cling/model/state/StateVariableAccessor;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/teleal/cling/model/state/StateVariableAccessor;->getReturnType()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAllowedValues(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v3

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    sget-object v16, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Not restricting allowed values (of string typed state var): "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    .restart local v10    # "foundValue":Z
    :cond_3
    aget-object v11, v3, v16

    .line 97
    .local v11, "s":Ljava/lang/String;
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 98
    const/4 v10, 0x1

    .line 99
    goto/16 :goto_2

    .line 96
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 111
    .end local v10    # "foundValue":Z
    .end local v11    # "s":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    .line 112
    .local v2, "allowedValueRange":Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;
    invoke-interface {v4}, Lorg/teleal/cling/model/types/Datatype;->getBuiltin()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/teleal/cling/model/types/Datatype$Builtin;->isNumeric(Lorg/teleal/cling/model/types/Datatype$Builtin;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 113
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->allowedValueMinimum()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_7

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->allowedValueMaximum()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_8

    .line 115
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAllowedValueRange()Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v2

    .line 118
    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    .line 122
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 129
    .local v14, "v":J
    invoke-virtual {v2, v14, v15}, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->isInRange(J)Z

    move-result v16

    if-nez v16, :cond_8

    .line 130
    new-instance v16, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 131
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Default value \'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' is not in allowed range of: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 130
    invoke-direct/range {v16 .. v17}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 123
    .end local v14    # "v":J
    :catch_0
    move-exception v9

    .line 124
    .local v9, "ex":Ljava/lang/Exception;
    new-instance v16, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 125
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Default value \'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' is not numeric (for range checking) of: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 124
    invoke-direct/range {v16 .. v17}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 138
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->sendEvents()Z

    move-result v12

    .line 139
    .local v12, "sendEvents":Z
    if-eqz v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/teleal/cling/model/state/StateVariableAccessor;

    move-result-object v16

    if-nez v16, :cond_9

    .line 140
    new-instance v16, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 141
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "State variable sends events but has no accessor for field or getter: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 140
    invoke-direct/range {v16 .. v17}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 145
    :cond_9
    const/4 v7, 0x0

    .line 146
    .local v7, "eventMaximumRateMillis":I
    const/4 v8, 0x0

    .line 147
    .local v8, "eventMinimumDelta":I
    if-eqz v12, :cond_b

    .line 148
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->eventMaximumRateMilliseconds()I

    move-result v16

    if-lez v16, :cond_a

    .line 149
    sget-object v16, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Moderating state variable events using maximum rate (milliseconds): "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->eventMaximumRateMilliseconds()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->eventMaximumRateMilliseconds()I

    move-result v7

    .line 153
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->eventMinimumDelta()I

    move-result v16

    if-lez v16, :cond_b

    invoke-interface {v4}, Lorg/teleal/cling/model/types/Datatype;->getBuiltin()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/teleal/cling/model/types/Datatype$Builtin;->isNumeric(Lorg/teleal/cling/model/types/Datatype$Builtin;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 155
    sget-object v16, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Moderating state variable events using minimum delta: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->eventMinimumDelta()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->eventMinimumDelta()I

    move-result v8

    .line 161
    :cond_b
    new-instance v13, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    invoke-direct {v13, v4, v5, v3, v2}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/String;[Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;)V

    .line 164
    .local v13, "typeDetails":Lorg/teleal/cling/model/meta/StateVariableTypeDetails;
    new-instance v6, Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    invoke-direct {v6, v12, v7, v8}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;-><init>(ZII)V

    .line 166
    .local v6, "eventDetails":Lorg/teleal/cling/model/meta/StateVariableEventDetails;
    new-instance v16, Lorg/teleal/cling/model/meta/StateVariable;

    invoke-virtual/range {p0 .. p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13, v6}, Lorg/teleal/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableTypeDetails;Lorg/teleal/cling/model/meta/StateVariableEventDetails;)V

    return-object v16
.end method

.method public getAccessor()Lorg/teleal/cling/model/state/StateVariableAccessor;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->accessor:Lorg/teleal/cling/model/state/StateVariableAccessor;

    return-object v0
.end method

.method protected getAllowedValueRange()Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->allowedValueMaximum()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->allowedValueMinimum()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 259
    new-instance v0, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allowed value range maximum is smaller than minimum: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-direct {v0, v1}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    new-instance v1, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    .line 265
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->allowedValueMinimum()J

    move-result-wide v2

    .line 266
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->allowedValueMaximum()J

    move-result-wide v4

    .line 267
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->allowedValueStep()J

    move-result-wide v6

    .line 264
    invoke-direct/range {v1 .. v7}, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;-><init>(JJJ)V

    return-object v1
.end method

.method protected getAllowedValues(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 6
    .param p1, "enumType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    new-instance v3, Lorg/teleal/cling/binding/LocalServiceBindingException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Allowed values type is not an Enum: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 240
    :cond_0
    sget-object v3, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Restricting allowed values of state variable to Enum: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    new-array v0, v3, [Ljava/lang/String;

    .line 242
    .local v0, "allowedValueStrings":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 253
    return-object v0

    .line 243
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    aget-object v2, v3, v1

    .line 244
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_2

    .line 245
    new-instance v3, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Allowed value string (that is, Enum constant name) is longer than 32 characters: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-direct {v3, v4}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    :cond_2
    sget-object v3, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adding allowed value (converted to string): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->annotation:Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStringConvertibleTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->stringConvertibleTypes:Ljava/util/Set;

    return-object v0
.end method
