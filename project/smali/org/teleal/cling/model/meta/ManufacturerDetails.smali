.class public Lorg/teleal/cling/model/meta/ManufacturerDetails;
.super Ljava/lang/Object;
.source "ManufacturerDetails.java"


# instance fields
.field private manufacturer:Ljava/lang/String;

.field private manufacturerURI:Ljava/net/URI;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/teleal/cling/model/meta/ManufacturerDetails;->manufacturer:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "manufacturerURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/teleal/cling/model/meta/ManufacturerDetails;->manufacturer:Ljava/lang/String;

    .line 50
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/meta/ManufacturerDetails;->manufacturerURI:Ljava/net/URI;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "manufacturerURI"    # Ljava/net/URI;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/teleal/cling/model/meta/ManufacturerDetails;->manufacturer:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/teleal/cling/model/meta/ManufacturerDetails;->manufacturerURI:Ljava/net/URI;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "manufacturerURI"    # Ljava/net/URI;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/teleal/cling/model/meta/ManufacturerDetails;->manufacturerURI:Ljava/net/URI;

    .line 41
    return-void
.end method


# virtual methods
.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/teleal/cling/model/meta/ManufacturerDetails;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/teleal/cling/model/meta/ManufacturerDetails;->manufacturerURI:Ljava/net/URI;

    return-object v0
.end method
