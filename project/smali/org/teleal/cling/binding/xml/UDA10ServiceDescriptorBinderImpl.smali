.class public Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;
.super Ljava/lang/Object;
.source "UDA10ServiceDescriptorBinderImpl.java"

# interfaces
.implements Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private generateAction(Lorg/teleal/cling/model/meta/Action;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "action"    # Lorg/teleal/cling/model/meta/Action;
    .param p2, "descriptor"    # Lorg/w3c/dom/Document;
    .param p3, "actionListElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 397
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->action:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, p3, v3}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 399
    .local v1, "actionElement":Lorg/w3c/dom/Element;
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v1, v3, v4}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 401
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Action;->hasArguments()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->argumentList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, v1, v3}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 403
    .local v2, "argumentListElement":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Action;->getArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_1

    .line 407
    .end local v2    # "argumentListElement":Lorg/w3c/dom/Element;
    :cond_0
    return-void

    .line 403
    .restart local v2    # "argumentListElement":Lorg/w3c/dom/Element;
    :cond_1
    aget-object v0, v4, v3

    .line 404
    .local v0, "actionArgument":Lorg/teleal/cling/model/meta/ActionArgument;
    invoke-direct {p0, v0, p2, v2}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->generateActionArgument(Lorg/teleal/cling/model/meta/ActionArgument;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 403
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private generateActionArgument(Lorg/teleal/cling/model/meta/ActionArgument;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "actionArgument"    # Lorg/teleal/cling/model/meta/ActionArgument;
    .param p2, "descriptor"    # Lorg/w3c/dom/Document;
    .param p3, "actionElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 411
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->argument:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, p3, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 413
    .local v0, "actionArgumentElement":Lorg/w3c/dom/Element;
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 414
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->direction:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/ActionArgument;->getDirection()Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 415
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->relatedStateVariable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/ActionArgument;->getRelatedStateVariableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 416
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/ActionArgument;->isReturnValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->retval:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, v0, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    .line 419
    :cond_0
    return-void
.end method

.method private generateActionList(Lorg/teleal/cling/model/meta/Service;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 7
    .param p1, "serviceModel"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "descriptor"    # Lorg/w3c/dom/Document;
    .param p3, "scpdElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 387
    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->actionList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, p3, v2}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 389
    .local v1, "actionListElement":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Service;->getActions()[Lorg/teleal/cling/model/meta/Action;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 393
    return-void

    .line 389
    :cond_0
    aget-object v0, v3, v2

    .line 390
    .local v0, "action":Lorg/teleal/cling/model/meta/Action;
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QueryStateVariable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 391
    invoke-direct {p0, v0, p2, v1}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->generateAction(Lorg/teleal/cling/model/meta/Action;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 389
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private generateScpd(Lorg/teleal/cling/model/meta/Service;Lorg/w3c/dom/Document;)V
    .locals 3
    .param p1, "serviceModel"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "descriptor"    # Lorg/w3c/dom/Document;

    .prologue
    .line 369
    const-string v1, "urn:schemas-upnp-org:service-1-0"

    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->scpd:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 370
    .local v0, "scpdElement":Lorg/w3c/dom/Element;
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 372
    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->generateSpecVersion(Lorg/teleal/cling/model/meta/Service;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 373
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Service;->hasActions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->generateActionList(Lorg/teleal/cling/model/meta/Service;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 376
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->generateServiceStateTable(Lorg/teleal/cling/model/meta/Service;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 377
    return-void
.end method

.method private generateServiceStateTable(Lorg/teleal/cling/model/meta/Service;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 5
    .param p1, "serviceModel"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "descriptor"    # Lorg/w3c/dom/Document;
    .param p3, "scpdElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 423
    sget-object v2, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->serviceStateTable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, p3, v2}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 425
    .local v0, "serviceStateTableElement":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Service;->getStateVariables()[Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 428
    return-void

    .line 425
    :cond_0
    aget-object v1, v3, v2

    .line 426
    .local v1, "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    invoke-direct {p0, v1, p2, v0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->generateStateVariable(Lorg/teleal/cling/model/meta/StateVariable;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private generateSpecVersion(Lorg/teleal/cling/model/meta/Service;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "serviceModel"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "descriptor"    # Lorg/w3c/dom/Document;
    .param p3, "rootElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 380
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->specVersion:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, p3, v1}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 381
    .local v0, "specVersionElement":Lorg/w3c/dom/Element;
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->major:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Service;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/Device;->getVersion()Lorg/teleal/cling/model/meta/UDAVersion;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/UDAVersion;->getMajor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 382
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->minor:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Service;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/Device;->getVersion()Lorg/teleal/cling/model/meta/UDAVersion;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/UDAVersion;->getMinor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 383
    return-void
.end method

.method private generateStateVariable(Lorg/teleal/cling/model/meta/StateVariable;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 8
    .param p1, "stateVariable"    # Lorg/teleal/cling/model/meta/StateVariable;
    .param p2, "descriptor"    # Lorg/w3c/dom/Document;
    .param p3, "serviveStateTableElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 432
    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->stateVariable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, p3, v4}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 434
    .local v3, "stateVariableElement":Lorg/w3c/dom/Element;
    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v3, v4, v5}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 436
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v4

    instance-of v4, v4, Lorg/teleal/cling/model/types/CustomDatatype;

    if-eqz v4, :cond_2

    .line 437
    sget-object v5, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->dataType:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 438
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/types/CustomDatatype;

    invoke-virtual {v4}, Lorg/teleal/cling/model/types/CustomDatatype;->getName()Ljava/lang/String;

    move-result-object v4

    .line 437
    invoke-static {p2, v3, v5, v4}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 444
    :goto_0
    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->defaultValue:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 445
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    .line 444
    invoke-static {p2, v3, v4, v5}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 448
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getEventDetails()Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->isSendEvents()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 449
    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->sendEvents:Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    invoke-virtual {v4}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "yes"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :goto_1
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getAllowedValues()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 455
    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, v3, v4}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 456
    .local v1, "allowedValueListElement":Lorg/w3c/dom/Element;
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getAllowedValues()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v6, :cond_4

    .line 461
    .end local v1    # "allowedValueListElement":Lorg/w3c/dom/Element;
    :cond_0
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getAllowedValueRange()Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 462
    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueRange:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, v3, v4}, Lorg/teleal/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 464
    .local v2, "allowedValueRangeElement":Lorg/w3c/dom/Element;
    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->minimum:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getAllowedValueRange()Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->getMinimum()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 463
    invoke-static {p2, v2, v4, v5}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 467
    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->maximum:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getAllowedValueRange()Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->getMaximum()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 466
    invoke-static {p2, v2, v4, v5}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 469
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getAllowedValueRange()Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->getStep()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 471
    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->step:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getAllowedValueRange()Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->getStep()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 470
    invoke-static {p2, v2, v4, v5}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 476
    .end local v2    # "allowedValueRangeElement":Lorg/w3c/dom/Element;
    :cond_1
    return-void

    .line 440
    :cond_2
    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->dataType:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    .line 441
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v5

    invoke-interface {v5}, Lorg/teleal/cling/model/types/Datatype;->getBuiltin()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDescriptorName()Ljava/lang/String;

    move-result-object v5

    .line 440
    invoke-static {p2, v3, v4, v5}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    goto/16 :goto_0

    .line 451
    :cond_3
    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->sendEvents:Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    invoke-virtual {v4}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "no"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 456
    .restart local v1    # "allowedValueListElement":Lorg/w3c/dom/Element;
    :cond_4
    aget-object v0, v5, v4

    .line 457
    .local v0, "allowedValue":Ljava/lang/String;
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValue:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-static {p2, v1, v7, v0}, Lorg/teleal/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/Enum;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    .line 456
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public buildDOM(Lorg/teleal/cling/model/meta/Service;)Lorg/w3c/dom/Document;
    .locals 6
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .prologue
    .line 352
    :try_start_0
    sget-object v3, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Generting XML descriptor from service model: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 354
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 355
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 357
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 358
    .local v0, "d":Lorg/w3c/dom/Document;
    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->generateScpd(Lorg/teleal/cling/model/meta/Service;Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    return-object v0

    .line 362
    .end local v0    # "d":Lorg/w3c/dom/Document;
    .end local v2    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v1

    .line 363
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not generate service descriptor: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected buildInstance(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/binding/staging/MutableService;)Lorg/teleal/cling/model/meta/Service;
    .locals 1
    .param p2, "descriptor"    # Lorg/teleal/cling/binding/staging/MutableService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/teleal/cling/model/meta/Service;",
            ">(TS;",
            "Lorg/teleal/cling/binding/staging/MutableService;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "undescribedService":Lorg/teleal/cling/model/meta/Service;, "TS;"
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Service;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/teleal/cling/binding/staging/MutableService;->build(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    return-object v0
.end method

.method public describe(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;)Lorg/teleal/cling/model/meta/Service;
    .locals 7
    .param p2, "descriptorXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/teleal/cling/model/meta/Service;",
            ">(TS;",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;,
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "undescribedService":Lorg/teleal/cling/model/meta/Service;, "TS;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 64
    :cond_0
    new-instance v3, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    const-string v4, "Null or empty descriptor"

    invoke-direct {v3, v4}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    :cond_1
    :try_start_0
    sget-object v3, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Populating service from XML descriptor: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 71
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 73
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 74
    new-instance v4, Lorg/xml/sax/InputSource;

    .line 76
    new-instance v5, Ljava/io/StringReader;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 73
    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 80
    .local v0, "d":Lorg/w3c/dom/Document;
    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->describe(Lorg/teleal/cling/model/meta/Service;Lorg/w3c/dom/Document;)Lorg/teleal/cling/model/meta/Service;
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 82
    .end local v0    # "d":Lorg/w3c/dom/Document;
    .end local v2    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "ex":Lorg/teleal/cling/model/ValidationException;
    throw v1

    .line 84
    .end local v1    # "ex":Lorg/teleal/cling/model/ValidationException;
    :catch_1
    move-exception v1

    .line 85
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not parse service descriptor: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public describe(Lorg/teleal/cling/model/meta/Service;Lorg/w3c/dom/Document;)Lorg/teleal/cling/model/meta/Service;
    .locals 6
    .param p2, "dom"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/teleal/cling/model/meta/Service;",
            ">(TS;",
            "Lorg/w3c/dom/Document;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;,
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "undescribedService":Lorg/teleal/cling/model/meta/Service;, "TS;"
    :try_start_0
    sget-object v3, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Populating service from DOM: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 94
    new-instance v0, Lorg/teleal/cling/binding/staging/MutableService;

    invoke-direct {v0}, Lorg/teleal/cling/binding/staging/MutableService;-><init>()V

    .line 96
    .local v0, "descriptor":Lorg/teleal/cling/binding/staging/MutableService;
    invoke-virtual {p0, v0, p1}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->hydrateBasic(Lorg/teleal/cling/binding/staging/MutableService;Lorg/teleal/cling/model/meta/Service;)V

    .line 98
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 99
    .local v2, "rootElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v0, v2}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->hydrateRoot(Lorg/teleal/cling/binding/staging/MutableService;Lorg/w3c/dom/Element;)V

    .line 102
    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->buildInstance(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/binding/staging/MutableService;)Lorg/teleal/cling/model/meta/Service;
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 104
    .end local v0    # "descriptor":Lorg/teleal/cling/binding/staging/MutableService;
    .end local v2    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "ex":Lorg/teleal/cling/model/ValidationException;
    throw v1

    .line 106
    .end local v1    # "ex":Lorg/teleal/cling/model/ValidationException;
    :catch_1
    move-exception v1

    .line 107
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not parse service DOM: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public generate(Lorg/teleal/cling/model/meta/Service;)Ljava/lang/String;
    .locals 4
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .prologue
    .line 340
    :try_start_0
    sget-object v1, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Generating XML descriptor from service model: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0, p1}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->buildDOM(Lorg/teleal/cling/model/meta/Service;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-static {v1}, Lorg/teleal/cling/model/XMLUtil;->documentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not build DOM: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hydrateAction(Lorg/teleal/cling/binding/staging/MutableAction;Lorg/w3c/dom/Node;)V
    .locals 9
    .param p1, "action"    # Lorg/teleal/cling/binding/staging/MutableAction;
    .param p2, "actionNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v8, 0x1

    .line 199
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 200
    .local v2, "actionNodeChildren":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lt v5, v7, :cond_0

    .line 225
    return-void

    .line 201
    :cond_0
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 203
    .local v1, "actionNodeChild":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v8, :cond_2

    .line 200
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 206
    :cond_2
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v7, v1}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 207
    invoke-static {v1}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lorg/teleal/cling/binding/staging/MutableAction;->name:Ljava/lang/String;

    goto :goto_1

    .line 208
    :cond_3
    sget-object v7, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->argumentList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v7, v1}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 211
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 212
    .local v4, "argumentChildren":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 213
    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 215
    .local v3, "argumentChild":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v8, :cond_4

    .line 212
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 218
    :cond_4
    new-instance v0, Lorg/teleal/cling/binding/staging/MutableActionArgument;

    invoke-direct {v0}, Lorg/teleal/cling/binding/staging/MutableActionArgument;-><init>()V

    .line 219
    .local v0, "actionArgument":Lorg/teleal/cling/binding/staging/MutableActionArgument;
    invoke-virtual {p0, v0, v3}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->hydrateActionArgument(Lorg/teleal/cling/binding/staging/MutableActionArgument;Lorg/w3c/dom/Node;)V

    .line 220
    iget-object v7, p1, Lorg/teleal/cling/binding/staging/MutableAction;->arguments:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public hydrateActionArgument(Lorg/teleal/cling/binding/staging/MutableActionArgument;Lorg/w3c/dom/Node;)V
    .locals 5
    .param p1, "actionArgument"    # Lorg/teleal/cling/binding/staging/MutableActionArgument;
    .param p2, "actionArgumentNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v4, 0x1

    .line 229
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 230
    .local v1, "argumentNodeChildren":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 246
    return-void

    .line 231
    :cond_0
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 233
    .local v0, "argumentNodeChild":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v3, v4, :cond_2

    .line 230
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    :cond_2
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v3, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lorg/teleal/cling/binding/staging/MutableActionArgument;->name:Ljava/lang/String;

    goto :goto_1

    .line 238
    :cond_3
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->direction:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v3, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 239
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    move-result-object v3

    iput-object v3, p1, Lorg/teleal/cling/binding/staging/MutableActionArgument;->direction:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    goto :goto_1

    .line 240
    :cond_4
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->relatedStateVariable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v3, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 241
    invoke-static {v0}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lorg/teleal/cling/binding/staging/MutableActionArgument;->relatedStateVariable:Ljava/lang/String;

    goto :goto_1

    .line 242
    :cond_5
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->retval:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v3, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    iput-boolean v4, p1, Lorg/teleal/cling/binding/staging/MutableActionArgument;->retval:Z

    goto :goto_1
.end method

.method public hydrateActionList(Lorg/teleal/cling/binding/staging/MutableService;Lorg/w3c/dom/Node;)V
    .locals 6
    .param p1, "descriptor"    # Lorg/teleal/cling/binding/staging/MutableService;
    .param p2, "actionListNode"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 183
    .local v2, "actionListChildren":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 195
    return-void

    .line 184
    :cond_0
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 186
    .local v1, "actionListChild":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 183
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    :cond_2
    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->action:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v4, v1}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    new-instance v0, Lorg/teleal/cling/binding/staging/MutableAction;

    invoke-direct {v0}, Lorg/teleal/cling/binding/staging/MutableAction;-><init>()V

    .line 191
    .local v0, "action":Lorg/teleal/cling/binding/staging/MutableAction;
    invoke-virtual {p0, v0, v1}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->hydrateAction(Lorg/teleal/cling/binding/staging/MutableAction;Lorg/w3c/dom/Node;)V

    .line 192
    iget-object v4, p1, Lorg/teleal/cling/binding/staging/MutableService;->actions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected hydrateBasic(Lorg/teleal/cling/binding/staging/MutableService;Lorg/teleal/cling/model/meta/Service;)V
    .locals 2
    .param p1, "descriptor"    # Lorg/teleal/cling/binding/staging/MutableService;
    .param p2, "undescribedService"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 116
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Service;->getServiceId()Lorg/teleal/cling/model/types/ServiceId;

    move-result-object v1

    iput-object v1, p1, Lorg/teleal/cling/binding/staging/MutableService;->serviceId:Lorg/teleal/cling/model/types/ServiceId;

    .line 117
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Service;->getServiceType()Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v1

    iput-object v1, p1, Lorg/teleal/cling/binding/staging/MutableService;->serviceType:Lorg/teleal/cling/model/types/ServiceType;

    .line 118
    instance-of v1, p2, Lorg/teleal/cling/model/meta/RemoteService;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 119
    check-cast v0, Lorg/teleal/cling/model/meta/RemoteService;

    .line 120
    .local v0, "rs":Lorg/teleal/cling/model/meta/RemoteService;
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/RemoteService;->getControlURI()Ljava/net/URI;

    move-result-object v1

    iput-object v1, p1, Lorg/teleal/cling/binding/staging/MutableService;->controlURI:Ljava/net/URI;

    .line 121
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/RemoteService;->getEventSubscriptionURI()Ljava/net/URI;

    move-result-object v1

    iput-object v1, p1, Lorg/teleal/cling/binding/staging/MutableService;->eventSubscriptionURI:Ljava/net/URI;

    .line 122
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/RemoteService;->getDescriptorURI()Ljava/net/URI;

    move-result-object v1

    iput-object v1, p1, Lorg/teleal/cling/binding/staging/MutableService;->descriptorURI:Ljava/net/URI;

    .line 124
    .end local v0    # "rs":Lorg/teleal/cling/model/meta/RemoteService;
    :cond_0
    return-void
.end method

.method protected hydrateRoot(Lorg/teleal/cling/binding/staging/MutableService;Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "descriptor"    # Lorg/teleal/cling/binding/staging/MutableService;
    .param p2, "rootElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .prologue
    .line 131
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->scpd:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v3, p2}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    new-instance v3, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Root element name is not <scpd>: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 135
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 137
    .local v2, "rootChildren":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 157
    return-void

    .line 138
    :cond_1
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 140
    .local v1, "rootChild":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 137
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_3
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->specVersion:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v3, v1}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 148
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->actionList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v3, v1}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 149
    invoke-virtual {p0, p1, v1}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->hydrateActionList(Lorg/teleal/cling/binding/staging/MutableService;Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 150
    :cond_4
    sget-object v3, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->serviceStateTable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v3, v1}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 151
    invoke-virtual {p0, p1, v1}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->hydrateServiceStateTableList(Lorg/teleal/cling/binding/staging/MutableService;Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 153
    :cond_5
    sget-object v3, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring unknown element: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public hydrateServiceStateTableList(Lorg/teleal/cling/binding/staging/MutableService;Lorg/w3c/dom/Node;)V
    .locals 6
    .param p1, "descriptor"    # Lorg/teleal/cling/binding/staging/MutableService;
    .param p2, "serviceStateTableNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 250
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 251
    .local v2, "serviceStateTableChildren":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 263
    return-void

    .line 252
    :cond_0
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 254
    .local v1, "serviceStateTableChild":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 251
    .end local v1    # "serviceStateTableChild":Lorg/w3c/dom/Node;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    .restart local v1    # "serviceStateTableChild":Lorg/w3c/dom/Node;
    :cond_2
    sget-object v4, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->stateVariable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v4, v1}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    new-instance v3, Lorg/teleal/cling/binding/staging/MutableStateVariable;

    invoke-direct {v3}, Lorg/teleal/cling/binding/staging/MutableStateVariable;-><init>()V

    .line 259
    .local v3, "stateVariable":Lorg/teleal/cling/binding/staging/MutableStateVariable;
    check-cast v1, Lorg/w3c/dom/Element;

    .end local v1    # "serviceStateTableChild":Lorg/w3c/dom/Node;
    invoke-virtual {p0, v3, v1}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;->hydrateStateVariable(Lorg/teleal/cling/binding/staging/MutableStateVariable;Lorg/w3c/dom/Element;)V

    .line 260
    iget-object v4, p1, Lorg/teleal/cling/binding/staging/MutableService;->stateVariables:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public hydrateStateVariable(Lorg/teleal/cling/binding/staging/MutableStateVariable;Lorg/w3c/dom/Element;)V
    .locals 16
    .param p1, "stateVariable"    # Lorg/teleal/cling/binding/staging/MutableStateVariable;
    .param p2, "stateVariableElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 267
    new-instance v14, Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    .line 268
    const-string v13, "sendEvents"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 269
    sget-object v13, Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->sendEvents:Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    invoke-virtual {v13}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string v15, "YES"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    :goto_0
    invoke-direct {v14, v13}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;-><init>(Z)V

    .line 267
    move-object/from16 v0, p1

    iput-object v14, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->eventDetails:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    .line 272
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 273
    .local v12, "stateVariableChildren":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lt v8, v13, :cond_1

    .line 336
    return-void

    .line 269
    .end local v8    # "i":I
    .end local v12    # "stateVariableChildren":Lorg/w3c/dom/NodeList;
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 274
    .restart local v8    # "i":I
    .restart local v12    # "stateVariableChildren":Lorg/w3c/dom/NodeList;
    :cond_1
    invoke-interface {v12, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 276
    .local v11, "stateVariableChild":Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_3

    .line 273
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 279
    :cond_3
    sget-object v13, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->name:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v13, v11}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 280
    invoke-static {v11}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iput-object v13, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->name:Ljava/lang/String;

    goto :goto_2

    .line 281
    :cond_4
    sget-object v13, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->dataType:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v13, v11}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 282
    invoke-static {v11}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, "dtName":Ljava/lang/String;
    invoke-static {v7}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getByDescriptorName(Ljava/lang/String;)Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v6

    .line 284
    .local v6, "builtin":Lorg/teleal/cling/model/types/Datatype$Builtin;, "Lorg/teleal/cling/model/types/Datatype$Builtin;"
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v13

    :goto_3
    move-object/from16 v0, p1

    iput-object v13, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->dataType:Lorg/teleal/cling/model/types/Datatype;

    goto :goto_2

    :cond_5
    new-instance v13, Lorg/teleal/cling/model/types/CustomDatatype;

    invoke-direct {v13, v7}, Lorg/teleal/cling/model/types/CustomDatatype;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 285
    .end local v6    # "builtin":Lorg/teleal/cling/model/types/Datatype$Builtin;, "Lorg/teleal/cling/model/types/Datatype$Builtin;"
    .end local v7    # "dtName":Ljava/lang/String;
    :cond_6
    sget-object v13, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->defaultValue:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v13, v11}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 286
    invoke-static {v11}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iput-object v13, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->defaultValue:Ljava/lang/String;

    goto :goto_2

    .line 287
    :cond_7
    sget-object v13, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueList:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v13, v11}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 289
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v5, "allowedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 292
    .local v2, "allowedValueListChildren":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_4
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lt v9, v13, :cond_8

    .line 302
    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->allowedValues:Ljava/util/List;

    goto :goto_2

    .line 293
    :cond_8
    invoke-interface {v2, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 295
    .local v1, "allowedValueListChild":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_a

    .line 292
    :cond_9
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 298
    :cond_a
    sget-object v13, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValue:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v13, v1}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 299
    invoke-static {v1}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 304
    .end local v1    # "allowedValueListChild":Lorg/w3c/dom/Node;
    .end local v2    # "allowedValueListChildren":Lorg/w3c/dom/NodeList;
    .end local v5    # "allowedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "j":I
    :cond_b
    sget-object v13, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->allowedValueRange:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v13, v11}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 306
    new-instance v10, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;

    invoke-direct {v10}, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;-><init>()V

    .line 308
    .local v10, "range":Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 309
    .local v4, "allowedValueRangeChildren":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_6
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lt v9, v13, :cond_c

    .line 333
    move-object/from16 v0, p1

    iput-object v10, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->allowedValueRange:Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;

    goto/16 :goto_2

    .line 310
    :cond_c
    invoke-interface {v4, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 312
    .local v3, "allowedValueRangeChild":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_e

    .line 309
    :cond_d
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 315
    :cond_e
    sget-object v13, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->minimum:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v13, v3}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 317
    :try_start_0
    invoke-static {v3}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v10, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;->minimum:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 318
    :catch_0
    move-exception v13

    goto :goto_7

    .line 320
    :cond_f
    sget-object v13, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->maximum:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v13, v3}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 322
    :try_start_1
    invoke-static {v3}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v10, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;->maximum:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 323
    :catch_1
    move-exception v13

    goto :goto_7

    .line 325
    :cond_10
    sget-object v13, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->step:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {v13, v3}, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Lorg/w3c/dom/Node;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 327
    :try_start_2
    invoke-static {v3}, Lorg/teleal/cling/model/XMLUtil;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v10, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;->step:Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    .line 328
    :catch_2
    move-exception v13

    goto :goto_7
.end method
