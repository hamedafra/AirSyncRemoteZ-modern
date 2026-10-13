.class public Lcom/aloys/formuler/airsyncremote/MyApp;
.super Landroid/app/Application;
.source "MyApp.java"


# static fields
.field private static STBIP:Ljava/lang/String;

.field private static instance:Lcom/aloys/formuler/airsyncremote/MyApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, ""

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MyApp;->STBIP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MyApp;->instance:Lcom/aloys/formuler/airsyncremote/MyApp;

    if-nez v0, :cond_0

    .line 22
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->initialize()V

    .line 23
    :cond_0
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MyApp;->instance:Lcom/aloys/formuler/airsyncremote/MyApp;

    return-object v0
.end method

.method public static getResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static getSTBIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MyApp;->STBIP:Ljava/lang/String;

    return-object v0
.end method

.method private static initialize()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/aloys/formuler/airsyncremote/MyApp;

    invoke-direct {v0}, Lcom/aloys/formuler/airsyncremote/MyApp;-><init>()V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MyApp;->instance:Lcom/aloys/formuler/airsyncremote/MyApp;

    .line 29
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MyApp;->instance:Lcom/aloys/formuler/airsyncremote/MyApp;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MyApp;->onCreate()V

    .line 30
    return-void
.end method

.method public static setSTBIP(Ljava/lang/String;)V
    .locals 0
    .param p0, "nowSTBIP"    # Ljava/lang/String;

    .prologue
    .line 44
    sput-object p0, Lcom/aloys/formuler/airsyncremote/MyApp;->STBIP:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/CompatHelper;->relaxVmPolicy()V

    .line 16
    sput-object p0, Lcom/aloys/formuler/airsyncremote/MyApp;->instance:Lcom/aloys/formuler/airsyncremote/MyApp;

    .line 17
    return-void
.end method
