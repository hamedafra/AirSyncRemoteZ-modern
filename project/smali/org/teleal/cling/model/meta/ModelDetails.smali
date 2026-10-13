.class public Lorg/teleal/cling/model/meta/ModelDetails;
.super Ljava/lang/Object;
.source "ModelDetails.java"


# instance fields
.field private modelDescription:Ljava/lang/String;

.field private modelName:Ljava/lang/String;

.field private modelNumber:Ljava/lang/String;

.field private modelURI:Ljava/net/URI;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "modelName"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "modelName"    # Ljava/lang/String;
    .param p2, "modelDescription"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelDescription:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "modelName"    # Ljava/lang/String;
    .param p2, "modelDescription"    # Ljava/lang/String;
    .param p3, "modelNumber"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelName:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelDescription:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelNumber:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "modelName"    # Ljava/lang/String;
    .param p2, "modelDescription"    # Ljava/lang/String;
    .param p3, "modelNumber"    # Ljava/lang/String;
    .param p4, "modelURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelName:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelDescription:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelNumber:Ljava/lang/String;

    .line 63
    invoke-static {p4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelURI:Ljava/net/URI;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 0
    .param p1, "modelName"    # Ljava/lang/String;
    .param p2, "modelDescription"    # Ljava/lang/String;
    .param p3, "modelNumber"    # Ljava/lang/String;
    .param p4, "modelURI"    # Ljava/net/URI;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelName:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelDescription:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelNumber:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelURI:Ljava/net/URI;

    .line 57
    return-void
.end method


# virtual methods
.method public getModelDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getModelURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/teleal/cling/model/meta/ModelDetails;->modelURI:Ljava/net/URI;

    return-object v0
.end method
