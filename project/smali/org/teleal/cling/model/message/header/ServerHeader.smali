.class public Lorg/teleal/cling/model/message/header/ServerHeader;
.super Lorg/teleal/cling/model/message/header/UpnpHeader;
.source "ServerHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/header/UpnpHeader",
        "<",
        "Lorg/teleal/cling/model/ServerClientTokens;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 28
    new-instance v0, Lorg/teleal/cling/model/ServerClientTokens;

    invoke-direct {v0}, Lorg/teleal/cling/model/ServerClientTokens;-><init>()V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/message/header/ServerHeader;->setValue(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/ServerClientTokens;)V
    .locals 0
    .param p1, "tokens"    # Lorg/teleal/cling/model/ServerClientTokens;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/header/ServerHeader;->setValue(Ljava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/ServerHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/ServerClientTokens;

    invoke-virtual {v0}, Lorg/teleal/cling/model/ServerClientTokens;->getHttpToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 13
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 40
    new-instance v8, Lorg/teleal/cling/model/ServerClientTokens;

    invoke-direct {v8}, Lorg/teleal/cling/model/ServerClientTokens;-><init>()V

    .line 43
    .local v8, "serverClientTokens":Lorg/teleal/cling/model/ServerClientTokens;
    const-string v9, "UNKNOWN"

    invoke-virtual {v8, v9}, Lorg/teleal/cling/model/ServerClientTokens;->setOsName(Ljava/lang/String;)V

    .line 44
    const-string v9, "UNKNOWN"

    invoke-virtual {v8, v9}, Lorg/teleal/cling/model/ServerClientTokens;->setOsVersion(Ljava/lang/String;)V

    .line 45
    const-string v9, "UNKNOWN"

    invoke-virtual {v8, v9}, Lorg/teleal/cling/model/ServerClientTokens;->setProductName(Ljava/lang/String;)V

    .line 46
    const-string v9, "UNKNOWN"

    invoke-virtual {v8, v9}, Lorg/teleal/cling/model/ServerClientTokens;->setProductVersion(Ljava/lang/String;)V

    .line 49
    const-string v9, "UPnP/1.1"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 50
    invoke-virtual {v8, v11}, Lorg/teleal/cling/model/ServerClientTokens;->setMinorVersion(I)V

    .line 58
    :cond_0
    const/4 v4, 0x0

    .line 59
    .local v4, "numberOfSpaces":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_4

    .line 66
    const-string v9, ","

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 69
    const-string v9, ","

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "productTokens":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "osNameVersion":[Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v9, v7, v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 90
    .end local v7    # "productTokens":[Ljava/lang/String;
    .local v6, "productNameVersion":[Ljava/lang/String;
    :goto_1
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/teleal/cling/model/ServerClientTokens;->setOsName(Ljava/lang/String;)V

    .line 91
    array-length v9, v5

    if-le v9, v11, :cond_1

    .line 92
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/teleal/cling/model/ServerClientTokens;->setOsVersion(Ljava/lang/String;)V

    .line 94
    :cond_1
    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/teleal/cling/model/ServerClientTokens;->setProductName(Ljava/lang/String;)V

    .line 95
    array-length v9, v6

    if-le v9, v11, :cond_2

    .line 96
    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/teleal/cling/model/ServerClientTokens;->setProductVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v5    # "osNameVersion":[Ljava/lang/String;
    .end local v6    # "productNameVersion":[Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {p0, v8}, Lorg/teleal/cling/model/message/header/ServerHeader;->setValue(Ljava/lang/Object;)V

    .line 122
    return-void

    .line 51
    .end local v3    # "i":I
    .end local v4    # "numberOfSpaces":I
    :cond_3
    const-string v9, "UPnP/1."

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 52
    new-instance v9, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Missing \'UPnP/1.\' in server information: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 60
    .restart local v3    # "i":I
    .restart local v4    # "numberOfSpaces":I
    :cond_4
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_5

    add-int/lit8 v4, v4, 0x1

    .line 59
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 73
    :cond_6
    if-le v4, v12, :cond_7

    .line 76
    const/4 v9, 0x0

    const-string v10, "UPnP/1."

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "beforeUpnpToken":Ljava/lang/String;
    const-string v9, "UPnP/1."

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "afterUpnpToken":Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 79
    .restart local v5    # "osNameVersion":[Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 81
    .restart local v6    # "productNameVersion":[Ljava/lang/String;
    goto/16 :goto_1

    .line 84
    .end local v0    # "afterUpnpToken":Ljava/lang/String;
    .end local v1    # "beforeUpnpToken":Ljava/lang/String;
    .end local v5    # "osNameVersion":[Ljava/lang/String;
    .end local v6    # "productNameVersion":[Ljava/lang/String;
    :cond_7
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 85
    .restart local v7    # "productTokens":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 86
    .restart local v5    # "osNameVersion":[Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v9, v7, v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .restart local v6    # "productNameVersion":[Ljava/lang/String;
    goto/16 :goto_1

    .line 99
    .end local v5    # "osNameVersion":[Ljava/lang/String;
    .end local v6    # "productNameVersion":[Ljava/lang/String;
    .end local v7    # "productTokens":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 102
    .local v2, "ex":Ljava/lang/Exception;
    const-string v9, "UNKNOWN"

    invoke-virtual {v8, v9}, Lorg/teleal/cling/model/ServerClientTokens;->setOsName(Ljava/lang/String;)V

    .line 103
    const-string v9, "UNKNOWN"

    invoke-virtual {v8, v9}, Lorg/teleal/cling/model/ServerClientTokens;->setOsVersion(Ljava/lang/String;)V

    .line 104
    const-string v9, "UNKNOWN"

    invoke-virtual {v8, v9}, Lorg/teleal/cling/model/ServerClientTokens;->setProductName(Ljava/lang/String;)V

    .line 105
    const-string v9, "UNKNOWN"

    invoke-virtual {v8, v9}, Lorg/teleal/cling/model/ServerClientTokens;->setProductVersion(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
