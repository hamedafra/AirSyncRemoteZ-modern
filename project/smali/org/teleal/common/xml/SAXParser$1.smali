.class Lorg/teleal/common/xml/SAXParser$1;
.super Ljava/util/HashMap;
.source "SAXParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/common/xml/SAXParser;->createSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/net/URI;",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/common/xml/SAXParser;


# direct methods
.method constructor <init>(Lorg/teleal/common/xml/SAXParser;)V
    .locals 2

    .prologue
    .line 89
    iput-object p1, p0, Lorg/teleal/common/xml/SAXParser$1;->this$0:Lorg/teleal/common/xml/SAXParser;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 90
    sget-object v0, Lorg/teleal/common/xml/SAXParser;->XML_SCHEMA_NAMESPACE:Ljava/net/URI;

    sget-object v1, Lorg/teleal/common/xml/SAXParser;->XML_SCHEMA_RESOURCE:Ljava/net/URL;

    invoke-virtual {p0, v0, v1}, Lorg/teleal/common/xml/SAXParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method
