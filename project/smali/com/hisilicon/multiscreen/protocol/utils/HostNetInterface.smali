.class public Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;
.super Ljava/lang/Object;
.source "HostNetInterface.java"


# static fields
.field public static final SEPARATOR_BETWEEN_HEAD_AND_IP:Ljava/lang/String; = "://"

.field public static final SEPARATOR_BETWEEN_IP_AND_PORT:Ljava/lang/String; = ":"

.field public static USE_LOOPBACK_ADDR:Z

.field public static USE_ONLY_IPV4_ADDR:Z

.field public static USE_ONLY_IPV6_ADDR:Z

.field private static ifAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    sput-boolean v1, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->USE_LOOPBACK_ADDR:Z

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->USE_ONLY_IPV4_ADDR:Z

    .line 69
    sput-boolean v1, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->USE_ONLY_IPV6_ADDR:Z

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->ifAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHostAddress(I)Ljava/lang/String;
    .locals 8
    .param p0, "n"    # I

    .prologue
    .line 148
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->hasAssignedInterface()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 149
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->getInterface()Ljava/lang/String;

    move-result-object v2

    .line 180
    :goto_0
    return-object v2

    .line 151
    :cond_0
    const/4 v3, 0x0

    .line 154
    .local v3, "hostAddrCnt":I
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 155
    .local v5, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 157
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 158
    .local v4, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 159
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 162
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->isUseAddress(Ljava/net/InetAddress;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 164
    if-ge v3, p0, :cond_3

    .line 166
    add-int/lit8 v3, v3, 0x1

    .line 167
    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 172
    .local v2, "host":Ljava/lang/String;
    goto :goto_0

    .line 176
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v2    # "host":Ljava/lang/String;
    .end local v4    # "ni":Ljava/net/NetworkInterface;
    .end local v5    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :catch_0
    move-exception v6

    .line 180
    :cond_4
    const-string v2, ""

    goto :goto_0
.end method

.method public static final getIPv4Address()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->getNHostAddresses()I

    move-result v1

    .line 252
    .local v1, "addrCnt":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v2, "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 255
    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 258
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "addr":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static final getIPv6Address()Ljava/lang/String;
    .locals 5

    .prologue
    .line 295
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->getNHostAddresses()I

    move-result v1

    .line 296
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 298
    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 302
    .end local v0    # "addr":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 296
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "addr":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static final getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->ifAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static final getNHostAddresses()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 118
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->hasAssignedInterface()Z

    move-result v5

    if-ne v5, v2, :cond_1

    .line 143
    .local v2, "nHostAddrs":I
    :cond_0
    :goto_0
    return v2

    .line 121
    .end local v2    # "nHostAddrs":I
    :cond_1
    const/4 v2, 0x0

    .line 124
    .restart local v2    # "nHostAddrs":I
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    .line 125
    .local v4, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 128
    .local v3, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 130
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 132
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 133
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->isUseAddress(Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 135
    add-int/lit8 v2, v2, 0x1

    .line 136
    goto :goto_1

    .line 139
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    .end local v4    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static final getSameSegmentIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 267
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->getIPv4Address()Ljava/util/ArrayList;

    move-result-object v2

    .line 268
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 269
    .local v3, "prefixBuf":Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move-object v4, v5

    .line 290
    :goto_0
    return-object v4

    .line 275
    :cond_1
    const-string v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "ipSeg":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    .end local v3    # "prefixBuf":Ljava/lang/StringBuffer;
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 277
    .restart local v3    # "prefixBuf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 283
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "]="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 286
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 281
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v4, v5

    .line 290
    goto :goto_0
.end method

.method private static final hasAssignedInterface()Z
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->ifAddress:Ljava/lang/String;

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
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 223
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->getNHostAddresses()I

    move-result v1

    .line 224
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 226
    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 230
    .end local v0    # "addr":Ljava/lang/String;
    :goto_1
    return v3

    .line 224
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "addr":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static final hasIPv6Addresses()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 235
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->getNHostAddresses()I

    move-result v1

    .line 236
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 238
    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 242
    .end local v0    # "addr":Ljava/lang/String;
    :goto_1
    return v3

    .line 236
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v0    # "addr":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static final int2Ip(I)Ljava/lang/String;
    .locals 2
    .param p0, "ip"    # I

    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 392
    .local v0, "ipAddressBuff":Ljava/lang/StringBuffer;
    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 393
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 395
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 397
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 399
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final ipAndPort2Uri(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "head"    # Ljava/lang/String;
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .local v0, "uriStringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final isIPv4Address(Ljava/lang/String;)Z
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 206
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 207
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 208
    const/4 v1, 0x1

    .line 214
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return v1

    .line 211
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final isIPv6Address(Ljava/lang/String;)Z
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 191
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 192
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 193
    const/4 v1, 0x1

    .line 199
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return v1

    .line 196
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static final isUseAddress(Ljava/net/InetAddress;)Z
    .locals 3
    .param p0, "addr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 98
    sget-boolean v2, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->USE_LOOPBACK_ADDR:Z

    if-nez v2, :cond_1

    .line 100
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    sget-boolean v2, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->USE_ONLY_IPV4_ADDR:Z

    if-ne v2, v1, :cond_2

    .line 105
    instance-of v2, p0, Ljava/net/Inet6Address;

    if-nez v2, :cond_0

    .line 108
    :cond_2
    sget-boolean v2, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->USE_ONLY_IPV6_ADDR:Z

    if-ne v2, v1, :cond_3

    .line 110
    instance-of v2, p0, Ljava/net/Inet4Address;

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public static isValidIp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xff

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "b":Z
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 411
    const-string v2, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "s":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v2, v3, :cond_0

    .line 415
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v3, :cond_0

    .line 416
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v3, :cond_0

    .line 417
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v3, :cond_0

    .line 418
    const/4 v0, 0x1

    .line 420
    .end local v1    # "s":[Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public static final setInterface(Ljava/lang/String;)V
    .locals 0
    .param p0, "ifaddr"    # Ljava/lang/String;

    .prologue
    .line 79
    sput-object p0, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->ifAddress:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static final uri2Ip(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    :cond_0
    const-string v1, "source location is null"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 333
    :goto_0
    return-object v0

    .line 322
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 325
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v3

    goto :goto_0

    .line 330
    :cond_2
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method public static final uri2port(Ljava/lang/String;)I
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 345
    const/4 v0, -0x1

    .line 346
    .local v0, "port":I
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    :cond_0
    const-string v1, "source uri is null"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 363
    :goto_0
    return v0

    .line 352
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 355
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 360
    :cond_2
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
