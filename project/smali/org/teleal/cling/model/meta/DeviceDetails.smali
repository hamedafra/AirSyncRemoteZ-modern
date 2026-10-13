.class public Lorg/teleal/cling/model/meta/DeviceDetails;
.super Ljava/lang/Object;
.source "DeviceDetails.java"

# interfaces
.implements Lorg/teleal/cling/model/Validatable;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final baseURL:Ljava/net/URL;

.field private final dlnaCaps:Lorg/teleal/cling/model/types/DLNACaps;

.field private final dlnaDocs:[Lorg/teleal/cling/model/types/DLNADoc;

.field private final friendlyName:Ljava/lang/String;

.field private final manufacturerDetails:Lorg/teleal/cling/model/meta/ManufacturerDetails;

.field private final modelDetails:Lorg/teleal/cling/model/meta/ModelDetails;

.field private final presentationURI:Ljava/net/URI;

.field private final serialNumber:Ljava/lang/String;

.field private final upc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/teleal/cling/model/meta/DeviceDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/meta/DeviceDetails;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "friendlyName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 51
    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;)V
    .locals 8
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "presentationURI"    # Ljava/net/URI;

    .prologue
    const/4 v1, 0x0

    .line 87
    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 10
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "presentationURI"    # Ljava/net/URI;
    .param p3, "dlnaDocs"    # [Lorg/teleal/cling/model/types/DLNADoc;
    .param p4, "dlnaCaps"    # Lorg/teleal/cling/model/types/DLNACaps;

    .prologue
    const/4 v1, 0x0

    .line 91
    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;)V
    .locals 8
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "manufacturerDetails"    # Lorg/teleal/cling/model/meta/ManufacturerDetails;

    .prologue
    const/4 v1, 0x0

    .line 59
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;)V
    .locals 8
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "manufacturerDetails"    # Lorg/teleal/cling/model/meta/ManufacturerDetails;
    .param p3, "modelDetails"    # Lorg/teleal/cling/model/meta/ModelDetails;

    .prologue
    const/4 v1, 0x0

    .line 68
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "manufacturerDetails"    # Lorg/teleal/cling/model/meta/ManufacturerDetails;
    .param p3, "modelDetails"    # Lorg/teleal/cling/model/meta/ModelDetails;
    .param p4, "serialNumber"    # Ljava/lang/String;
    .param p5, "upc"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 78
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "manufacturerDetails"    # Lorg/teleal/cling/model/meta/ManufacturerDetails;
    .param p3, "modelDetails"    # Lorg/teleal/cling/model/meta/ModelDetails;
    .param p4, "serialNumber"    # Ljava/lang/String;
    .param p5, "upc"    # Ljava/lang/String;
    .param p6, "presentationURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v1, 0x0

    invoke-static {p6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 10
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "manufacturerDetails"    # Lorg/teleal/cling/model/meta/ManufacturerDetails;
    .param p3, "modelDetails"    # Lorg/teleal/cling/model/meta/ModelDetails;
    .param p4, "serialNumber"    # Ljava/lang/String;
    .param p5, "upc"    # Ljava/lang/String;
    .param p6, "presentationURI"    # Ljava/lang/String;
    .param p7, "dlnaDocs"    # [Lorg/teleal/cling/model/types/DLNADoc;
    .param p8, "dlnaCaps"    # Lorg/teleal/cling/model/types/DLNACaps;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v1, 0x0

    invoke-static/range {p6 .. p6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 8
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "manufacturerDetails"    # Lorg/teleal/cling/model/meta/ManufacturerDetails;
    .param p3, "modelDetails"    # Lorg/teleal/cling/model/meta/ModelDetails;
    .param p4, "serialNumber"    # Ljava/lang/String;
    .param p5, "upc"    # Ljava/lang/String;
    .param p6, "presentationURI"    # Ljava/net/URI;

    .prologue
    .line 106
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 10
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "manufacturerDetails"    # Lorg/teleal/cling/model/meta/ManufacturerDetails;
    .param p3, "modelDetails"    # Lorg/teleal/cling/model/meta/ModelDetails;
    .param p4, "serialNumber"    # Ljava/lang/String;
    .param p5, "upc"    # Ljava/lang/String;
    .param p6, "presentationURI"    # Ljava/net/URI;
    .param p7, "dlnaDocs"    # [Lorg/teleal/cling/model/types/DLNADoc;
    .param p8, "dlnaCaps"    # Lorg/teleal/cling/model/types/DLNACaps;

    .prologue
    .line 111
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 10
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "manufacturerDetails"    # Lorg/teleal/cling/model/meta/ManufacturerDetails;
    .param p3, "modelDetails"    # Lorg/teleal/cling/model/meta/ModelDetails;
    .param p4, "serialNumber"    # Ljava/lang/String;
    .param p5, "upc"    # Ljava/lang/String;
    .param p6, "dlnaDocs"    # [Lorg/teleal/cling/model/types/DLNADoc;
    .param p7, "dlnaCaps"    # Lorg/teleal/cling/model/types/DLNACaps;

    .prologue
    .line 83
    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/net/URI;)V
    .locals 8
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "manufacturerDetails"    # Lorg/teleal/cling/model/meta/ManufacturerDetails;
    .param p3, "modelDetails"    # Lorg/teleal/cling/model/meta/ModelDetails;
    .param p4, "presentationURI"    # Ljava/net/URI;

    .prologue
    const/4 v1, 0x0

    .line 96
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    move-object v6, v1

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 10
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "manufacturerDetails"    # Lorg/teleal/cling/model/meta/ManufacturerDetails;
    .param p3, "modelDetails"    # Lorg/teleal/cling/model/meta/ModelDetails;
    .param p4, "presentationURI"    # Ljava/net/URI;
    .param p5, "dlnaDocs"    # [Lorg/teleal/cling/model/types/DLNADoc;
    .param p6, "dlnaCaps"    # Lorg/teleal/cling/model/types/DLNACaps;

    .prologue
    .line 101
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 10
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "manufacturerDetails"    # Lorg/teleal/cling/model/meta/ManufacturerDetails;
    .param p3, "modelDetails"    # Lorg/teleal/cling/model/meta/ModelDetails;
    .param p4, "dlnaDocs"    # [Lorg/teleal/cling/model/types/DLNADoc;
    .param p5, "dlnaCaps"    # Lorg/teleal/cling/model/types/DLNACaps;

    .prologue
    const/4 v1, 0x0

    .line 73
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 10
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "manufacturerDetails"    # Lorg/teleal/cling/model/meta/ManufacturerDetails;
    .param p3, "dlnaDocs"    # [Lorg/teleal/cling/model/types/DLNADoc;
    .param p4, "dlnaCaps"    # Lorg/teleal/cling/model/types/DLNACaps;

    .prologue
    const/4 v1, 0x0

    .line 63
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 10
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "dlnaDocs"    # [Lorg/teleal/cling/model/types/DLNADoc;
    .param p3, "dlnaCaps"    # Lorg/teleal/cling/model/types/DLNACaps;

    .prologue
    const/4 v1, 0x0

    .line 55
    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 10
    .param p1, "baseURL"    # Ljava/net/URL;
    .param p2, "friendlyName"    # Ljava/lang/String;
    .param p3, "manufacturerDetails"    # Lorg/teleal/cling/model/meta/ManufacturerDetails;
    .param p4, "modelDetails"    # Lorg/teleal/cling/model/meta/ModelDetails;
    .param p5, "serialNumber"    # Ljava/lang/String;
    .param p6, "upc"    # Ljava/lang/String;
    .param p7, "presentationURI"    # Ljava/net/URI;

    .prologue
    .line 130
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V
    .locals 1
    .param p1, "baseURL"    # Ljava/net/URL;
    .param p2, "friendlyName"    # Ljava/lang/String;
    .param p3, "manufacturerDetails"    # Lorg/teleal/cling/model/meta/ManufacturerDetails;
    .param p4, "modelDetails"    # Lorg/teleal/cling/model/meta/ModelDetails;
    .param p5, "serialNumber"    # Ljava/lang/String;
    .param p6, "upc"    # Ljava/lang/String;
    .param p7, "presentationURI"    # Ljava/net/URI;
    .param p8, "dlnaDocs"    # [Lorg/teleal/cling/model/types/DLNADoc;
    .param p9, "dlnaCaps"    # Lorg/teleal/cling/model/types/DLNACaps;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->baseURL:Ljava/net/URL;

    .line 138
    iput-object p2, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->friendlyName:Ljava/lang/String;

    .line 139
    if-nez p3, :cond_0

    new-instance p3, Lorg/teleal/cling/model/meta/ManufacturerDetails;

    .end local p3    # "manufacturerDetails":Lorg/teleal/cling/model/meta/ManufacturerDetails;
    invoke-direct {p3}, Lorg/teleal/cling/model/meta/ManufacturerDetails;-><init>()V

    :cond_0
    iput-object p3, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->manufacturerDetails:Lorg/teleal/cling/model/meta/ManufacturerDetails;

    .line 140
    if-nez p4, :cond_1

    new-instance p4, Lorg/teleal/cling/model/meta/ModelDetails;

    .end local p4    # "modelDetails":Lorg/teleal/cling/model/meta/ModelDetails;
    invoke-direct {p4}, Lorg/teleal/cling/model/meta/ModelDetails;-><init>()V

    :cond_1
    iput-object p4, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->modelDetails:Lorg/teleal/cling/model/meta/ModelDetails;

    .line 141
    iput-object p5, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->serialNumber:Ljava/lang/String;

    .line 142
    iput-object p6, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->upc:Ljava/lang/String;

    .line 143
    iput-object p7, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->presentationURI:Ljava/net/URI;

    .line 144
    if-eqz p8, :cond_2

    .end local p8    # "dlnaDocs":[Lorg/teleal/cling/model/types/DLNADoc;
    :goto_0
    iput-object p8, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->dlnaDocs:[Lorg/teleal/cling/model/types/DLNADoc;

    .line 145
    iput-object p9, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->dlnaCaps:Lorg/teleal/cling/model/types/DLNACaps;

    .line 146
    return-void

    .line 144
    .restart local p8    # "dlnaDocs":[Lorg/teleal/cling/model/types/DLNADoc;
    :cond_2
    const/4 v0, 0x0

    new-array p8, v0, [Lorg/teleal/cling/model/types/DLNADoc;

    goto :goto_0
.end method


# virtual methods
.method public getBaseURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->baseURL:Ljava/net/URL;

    return-object v0
.end method

.method public getDlnaCaps()Lorg/teleal/cling/model/types/DLNACaps;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->dlnaCaps:Lorg/teleal/cling/model/types/DLNACaps;

    return-object v0
.end method

.method public getDlnaDocs()[Lorg/teleal/cling/model/types/DLNADoc;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->dlnaDocs:[Lorg/teleal/cling/model/types/DLNADoc;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerDetails()Lorg/teleal/cling/model/meta/ManufacturerDetails;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->manufacturerDetails:Lorg/teleal/cling/model/meta/ManufacturerDetails;

    return-object v0
.end method

.method public getModelDetails()Lorg/teleal/cling/model/meta/ModelDetails;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->modelDetails:Lorg/teleal/cling/model/meta/ModelDetails;

    return-object v0
.end method

.method public getPresentationURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->presentationURI:Ljava/net/URI;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUpc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/teleal/cling/model/meta/DeviceDetails;->upc:Ljava/lang/String;

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    .line 190
    sget-object v2, Lorg/teleal/cling/model/meta/DeviceDetails;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UPnP specification violation, UPC must be 12 digits: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 200
    :cond_0
    :goto_0
    return-object v0

    .line 193
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, "ex":Ljava/lang/NumberFormatException;
    sget-object v2, Lorg/teleal/cling/model/meta/DeviceDetails;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UPnP specification violation, UPC must be 12 digits all-numeric: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0
.end method
