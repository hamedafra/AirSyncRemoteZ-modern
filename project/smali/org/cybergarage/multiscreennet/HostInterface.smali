.class public Lorg/cybergarage/multiscreennet/HostInterface;
.super Ljava/lang/Object;
.source "HostInterface.java"


# static fields
.field public static USE_LOOPBACK_ADDR:Z

.field public static USE_ONLY_IPV4_ADDR:Z

.field public static USE_ONLY_IPV6_ADDR:Z

.field private static ifAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    sput-boolean v1, Lorg/cybergarage/multiscreennet/HostInterface;->USE_LOOPBACK_ADDR:Z

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cybergarage/multiscreennet/HostInterface;->USE_ONLY_IPV4_ADDR:Z

    .line 43
    sput-boolean v1, Lorg/cybergarage/multiscreennet/HostInterface;->USE_ONLY_IPV6_ADDR:Z

    .line 49
    const-string v0, ""

    sput-object v0, Lorg/cybergarage/multiscreennet/HostInterface;->ifAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHostAddress(I)Ljava/lang/String;
    .locals 7
    .param p0, "n"    # I

    .prologue
    .line 122
    invoke-static {}, Lorg/cybergarage/multiscreennet/HostInterface;->hasAssignedInterface()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    invoke-static {}, Lorg/cybergarage/multiscreennet/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v2

    .line 154
    :goto_0
    return-object v2

    .line 125
    :cond_0
    const/4 v3, 0x0

    .line 128
    .local v3, "hostAddrCnt":I
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 129
    .local v5, "nis":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    .line 154
    .end local v5    # "nis":Ljava/util/Enumeration;
    :goto_1
    const-string v2, ""

    goto :goto_0

    .line 131
    .restart local v5    # "nis":Ljava/util/Enumeration;
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 132
    .local v4, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 133
    .local v1, "addrs":Ljava/util/Enumeration;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 136
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-static {v0}, Lorg/cybergarage/multiscreennet/HostInterface;->isUseAddress(Ljava/net/InetAddress;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 138
    if-ge v3, p0, :cond_4

    .line 140
    add-int/lit8 v3, v3, 0x1

    .line 141
    goto :goto_2

    .line 143
    :cond_4
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 146
    .local v2, "host":Ljava/lang/String;
    goto :goto_0

    .line 150
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Enumeration;
    .end local v2    # "host":Ljava/lang/String;
    .end local v4    # "ni":Ljava/net/NetworkInterface;
    .end local v5    # "nis":Ljava/util/Enumeration;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static final getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 257
    move-object v0, p0

    .line 258
    .local v0, "hostAddr":Ljava/lang/String;
    invoke-static {p0}, Lorg/cybergarage/multiscreennet/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final getIPv4Address()Ljava/lang/String;
    .locals 5

    .prologue
    .line 225
    invoke-static {}, Lorg/cybergarage/multiscreennet/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 226
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 235
    const-string v0, ""

    :cond_0
    return-object v0

    .line 228
    :cond_1
    invoke-static {v2}, Lorg/cybergarage/multiscreennet/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "addr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ip["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/multiscreenutil/Debug;->message(Ljava/lang/String;)V

    .line 230
    invoke-static {v0}, Lorg/cybergarage/multiscreennet/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final getIPv6Address()Ljava/lang/String;
    .locals 4

    .prologue
    .line 241
    invoke-static {}, Lorg/cybergarage/multiscreennet/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 242
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 248
    const-string v0, ""

    :cond_0
    return-object v0

    .line 244
    :cond_1
    invoke-static {v2}, Lorg/cybergarage/multiscreennet/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lorg/cybergarage/multiscreennet/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/cybergarage/multiscreennet/HostInterface;->ifAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static final getNHostAddresses()I
    .locals 6

    .prologue
    .line 92
    invoke-static {}, Lorg/cybergarage/multiscreennet/HostInterface;->hasAssignedInterface()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    const/4 v2, 0x1

    .line 117
    .local v2, "nHostAddrs":I
    :cond_0
    :goto_0
    return v2

    .line 95
    .end local v2    # "nHostAddrs":I
    :cond_1
    const/4 v2, 0x0

    .line 98
    .restart local v2    # "nHostAddrs":I
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    .line 99
    .local v4, "nis":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 102
    .local v3, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 104
    .local v1, "addrs":Ljava/util/Enumeration;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 107
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-static {v0}, Lorg/cybergarage/multiscreennet/HostInterface;->isUseAddress(Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 113
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Enumeration;
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    .end local v4    # "nis":Ljava/util/Enumeration;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static final hasAssignedInterface()Z
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/cybergarage/multiscreennet/HostInterface;->ifAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final hasIPv4Addresses()Z
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Lorg/cybergarage/multiscreennet/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 198
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 204
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 200
    :cond_0
    invoke-static {v2}, Lorg/cybergarage/multiscreennet/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lorg/cybergarage/multiscreennet/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    const/4 v3, 0x1

    goto :goto_1

    .line 198
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final hasIPv6Addresses()Z
    .locals 4

    .prologue
    .line 209
    invoke-static {}, Lorg/cybergarage/multiscreennet/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 210
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 216
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 212
    :cond_0
    invoke-static {v2}, Lorg/cybergarage/multiscreennet/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lorg/cybergarage/multiscreennet/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    const/4 v3, 0x1

    goto :goto_1

    .line 210
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final isIPv4Address(Ljava/lang/String;)Z
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 180
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 181
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 182
    const/4 v1, 0x1

    .line 188
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return v1

    .line 185
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final isIPv6Address(Ljava/lang/String;)Z
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 165
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 166
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 167
    const/4 v1, 0x1

    .line 173
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return v1

    .line 170
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static final isUseAddress(Ljava/net/InetAddress;)Z
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v0, 0x0

    .line 72
    sget-boolean v1, Lorg/cybergarage/multiscreennet/HostInterface;->USE_LOOPBACK_ADDR:Z

    if-nez v1, :cond_1

    .line 74
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    sget-boolean v1, Lorg/cybergarage/multiscreennet/HostInterface;->USE_ONLY_IPV4_ADDR:Z

    if-eqz v1, :cond_2

    .line 79
    instance-of v1, p0, Ljava/net/Inet6Address;

    if-nez v1, :cond_0

    .line 82
    :cond_2
    sget-boolean v1, Lorg/cybergarage/multiscreennet/HostInterface;->USE_ONLY_IPV6_ADDR:Z

    if-eqz v1, :cond_3

    .line 84
    instance-of v1, p0, Ljava/net/Inet4Address;

    if-nez v1, :cond_0

    .line 87
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final setInterface(Ljava/lang/String;)V
    .locals 0
    .param p0, "ifaddr"    # Ljava/lang/String;

    .prologue
    .line 53
    sput-object p0, Lorg/cybergarage/multiscreennet/HostInterface;->ifAddress:Ljava/lang/String;

    .line 54
    return-void
.end method
