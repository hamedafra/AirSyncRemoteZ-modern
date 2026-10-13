.class public abstract Lorg/teleal/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;
.super Ljava/lang/Object;
.source "AbstractMediaReceiverRegistrarService.java"


# annotations
.annotation runtime Lorg/teleal/cling/binding/annotations/UpnpService;
    serviceId = .subannotation Lorg/teleal/cling/binding/annotations/UpnpServiceId;
        namespace = "microsoft.com"
        value = "X_MS_MediaReceiverRegistrar"
    .end subannotation
    serviceType = .subannotation Lorg/teleal/cling/binding/annotations/UpnpServiceType;
        namespace = "microsoft.com"
        value = "X_MS_MediaReceiverRegistrar"
        version = 0x1
    .end subannotation
.end annotation

.annotation runtime Lorg/teleal/cling/binding/annotations/UpnpStateVariables;
    value = {
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_DeviceID"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "int"
            name = "A_ARG_TYPE_Result"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "bin.base64"
            name = "A_ARG_TYPE_RegistrationReqMsg"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "bin.base64"
            name = "A_ARG_TYPE_RegistrationRespMsg"
            sendEvents = false
        .end subannotation
    }
.end annotation


# instance fields
.field private authorizationDeniedUpdateID:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
        eventMinimumDelta = 0x1
    .end annotation
.end field

.field private authorizationGrantedUpdateID:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
        eventMinimumDelta = 0x1
    .end annotation
.end field

.field protected final propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field private validationRevokedUpdateID:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
    .end annotation
.end field

.field private validationSucceededUpdateID:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/teleal/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;-><init>(Ljava/beans/PropertyChangeSupport;)V

    .line 82
    return-void
.end method

.method protected constructor <init>(Ljava/beans/PropertyChangeSupport;)V
    .locals 4
    .param p1, "propertyChangeSupport"    # Ljava/beans/PropertyChangeSupport;

    .prologue
    const-wide/16 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->authorizationGrantedUpdateID:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 72
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->authorizationDeniedUpdateID:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 75
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->validationSucceededUpdateID:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 78
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->validationRevokedUpdateID:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 85
    if-eqz p1, :cond_0

    .end local p1    # "propertyChangeSupport":Ljava/beans/PropertyChangeSupport;
    :goto_0
    iput-object p1, p0, Lorg/teleal/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 86
    return-void

    .line 85
    .restart local p1    # "propertyChangeSupport":Ljava/beans/PropertyChangeSupport;
    :cond_0
    new-instance p1, Ljava/beans/PropertyChangeSupport;

    .end local p1    # "propertyChangeSupport":Ljava/beans/PropertyChangeSupport;
    invoke-direct {p1, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getAuthorizationDeniedUpdateID()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1
    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                name = "AuthorizationDeniedUpdateID"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/teleal/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->authorizationDeniedUpdateID:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getAuthorizationGrantedUpdateID()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1
    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                name = "AuthorizationGrantedUpdateID"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/teleal/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->authorizationGrantedUpdateID:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/teleal/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    return-object v0
.end method

.method public getValidationRevokedUpdateID()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1
    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                name = "ValidationRevokedUpdateID"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lorg/teleal/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->validationRevokedUpdateID:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getValidationSucceededUpdateID()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1
    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                name = "ValidationSucceededUpdateID"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/teleal/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->validationSucceededUpdateID:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public isAuthorized(Ljava/lang/String;)I
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "DeviceID"
            stateVariable = "A_ARG_TYPE_DeviceID"
        .end annotation
    .end param
    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                name = "Result"
                stateVariable = "A_ARG_TYPE_Result"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public isValidated(Ljava/lang/String;)I
    .locals 1
    .param p1, "deviceID"    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "DeviceID"
            stateVariable = "A_ARG_TYPE_DeviceID"
        .end annotation
    .end param
    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                name = "Result"
                stateVariable = "A_ARG_TYPE_Result"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public registerDevice([B)[B
    .locals 1
    .param p1, "registrationReqMsg"    # [B
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "RegistrationReqMsg"
            stateVariable = "A_ARG_TYPE_RegistrationReqMsg"
        .end annotation
    .end param
    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                name = "RegistrationRespMsg"
                stateVariable = "A_ARG_TYPE_RegistrationRespMsg"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
