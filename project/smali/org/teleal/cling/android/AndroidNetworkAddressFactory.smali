.class public Lorg/teleal/cling/android/AndroidNetworkAddressFactory;
.super Ljava/lang/Object;
.source "AndroidNetworkAddressFactory.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/NetworkAddressFactory;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected bindAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field protected wifiInterface:Ljava/net/NetworkInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)V
    .locals 3
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/InitializationException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->bindAddresses:Ljava/util/List;

    .line 62
    invoke-static {p1, p2}, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->getWifiNetworkInterface(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)Ljava/net/NetworkInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->wifiInterface:Ljava/net/NetworkInterface;

    .line 64
    iget-object v0, p0, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->wifiInterface:Ljava/net/NetworkInterface;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lorg/teleal/cling/transport/spi/InitializationException;

    const-string v1, "Could not discover WiFi network interface"

    invoke-direct {v0, v1}, Lorg/teleal/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    sget-object v0, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Discovered WiFi network interface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->wifiInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->discoverBindAddresses()V

    .line 69
    return-void
.end method

.method static byteArrayToInt([BI)I
    .locals 6
    .param p0, "arr"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 227
    if-eqz p0, :cond_0

    array-length v4, p0

    sub-int/2addr v4, p1

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 228
    :cond_0
    const/4 v4, -0x1

    .line 234
    :goto_0
    return v4

    .line 230
    :cond_1
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x18

    .line 231
    .local v0, "r0":I
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v1, v4, 0x10

    .line 232
    .local v1, "r1":I
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v2, v4, 0x8

    .line 233
    .local v2, "r2":I
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 234
    .local v3, "r3":I
    add-int v4, v0, v1

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    goto :goto_0
.end method

.method public static getEmulatorWifiNetworkInterface(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)Ljava/net/NetworkInterface;
    .locals 8
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 161
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    .line 162
    .local v4, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 171
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 162
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 163
    .local v3, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 164
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 165
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 168
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v3    # "iface":Ljava/net/NetworkInterface;
    .end local v4    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    :catch_0
    move-exception v2

    .line 169
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v5, Lorg/teleal/cling/transport/spi/InitializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not find emulator\'s network interface: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/teleal/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static getRealWifiNetworkInterface(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)Ljava/net/NetworkInterface;
    .locals 12
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .prologue
    const/4 v9, 0x0

    .line 176
    const/4 v5, 0x0

    .line 179
    .local v5, "interfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 185
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 187
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v8

    .line 189
    .local v8, "wifiIP":I
    invoke-static {v8}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    .line 191
    .local v7, "reverseWifiIP":I
    :cond_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_3

    .line 207
    .end local v7    # "reverseWifiIP":I
    .end local v8    # "wifiIP":I
    :cond_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_5

    move-object v3, v9

    .line 223
    :cond_2
    :goto_0
    return-object v3

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/net/SocketException;
    sget-object v10, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->log:Ljava/util/logging/Logger;

    const-string v11, "No network interfaces available"

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    move-object v3, v9

    .line 182
    goto :goto_0

    .line 193
    .end local v1    # "e":Ljava/net/SocketException;
    .restart local v7    # "reverseWifiIP":I
    .restart local v8    # "wifiIP":I
    :cond_3
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 195
    .local v3, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 196
    .local v4, "inetAddresses":Ljava/util/Enumeration;
    :cond_4
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 197
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 198
    .local v6, "nextElement":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->byteArrayToInt([BI)I

    move-result v0

    .line 200
    .local v0, "byteArrayToInt":I
    if-eq v0, v8, :cond_2

    if-ne v0, v7, :cond_4

    goto :goto_0

    .line 209
    .end local v0    # "byteArrayToInt":I
    .end local v3    # "iface":Ljava/net/NetworkInterface;
    .end local v4    # "inetAddresses":Ljava/util/Enumeration;
    .end local v6    # "nextElement":Ljava/net/InetAddress;
    .end local v7    # "reverseWifiIP":I
    .end local v8    # "wifiIP":I
    :cond_5
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 211
    .restart local v3    # "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 212
    .restart local v4    # "inetAddresses":Ljava/util/Enumeration;
    :cond_6
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 213
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 214
    .restart local v6    # "nextElement":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "hostAddress":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "\\d+.\\d+.\\d+.\\d+"

    invoke-virtual {v2, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_0
.end method

.method public static getWifiNetworkInterface(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)Ljava/net/NetworkInterface;
    .locals 1
    .param p0, "manager"    # Landroid/net/wifi/WifiManager;
    .param p1, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 152
    sget-boolean v0, Lorg/teleal/cling/model/ModelUtil;->ANDROID_EMULATOR:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-static {p0, p1}, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->getEmulatorWifiNetworkInterface(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->getRealWifiNetworkInterface(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)Ljava/net/NetworkInterface;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected discoverBindAddresses()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/InitializationException;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    sget-object v2, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Discovering addresses of interface: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->wifiInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->wifiInterface:Ljava/net/NetworkInterface;

    invoke-virtual {p0, v2}, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->getInetAddresses(Ljava/net/NetworkInterface;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    return-void

    .line 75
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 76
    .local v1, "inetAddress":Ljava/net/InetAddress;
    if-nez v1, :cond_1

    .line 77
    sget-object v3, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Network has a null address: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->wifiInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Lorg/teleal/cling/transport/spi/InitializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not not analyze local network interfaces: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/teleal/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 81
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->isUsableAddress(Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    sget-object v3, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Discovered usable network interface address: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->bindAddresses:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_2
    sget-object v3, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring non-usable network interface address: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getBindAddresses()[Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->bindAddresses:Ljava/util/List;

    iget-object v1, p0, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->bindAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method public getBroadcastAddress(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 1
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHardwareAddress(Ljava/net/InetAddress;)[B
    .locals 1
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getInetAddresses(Ljava/net/NetworkInterface;)Ljava/util/List;
    .locals 1
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/NetworkInterface;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress(Ljava/net/NetworkInterface;ZLjava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 4
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p2, "isIPv6"    # Z
    .param p3, "remoteAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->getInetAddresses(Ljava/net/NetworkInterface;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t find any IPv4 or IPv6 address on interface: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 141
    .local v0, "localAddress":Ljava/net/InetAddress;
    if-eqz p2, :cond_2

    instance-of v2, v0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_2

    .line 144
    :goto_0
    return-object v0

    .line 143
    :cond_2
    if-nez p2, :cond_0

    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getMulticastGroup()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 108
    :try_start_0
    const-string v1, "239.255.255.250"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "ex":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMulticastPort()I
    .locals 1

    .prologue
    .line 115
    const/16 v0, 0x76c

    return v0
.end method

.method public getNetworkInterfaces()[Ljava/net/NetworkInterface;
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/NetworkInterface;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->wifiInterface:Ljava/net/NetworkInterface;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getStreamListenPort()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method protected isUsableAddress(Ljava/net/InetAddress;)Z
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 95
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping unsupported non-IPv4 address: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
