.class public Lcom/hisilicon/multiscreen/protocol/utils/UDPClient;
.super Ljava/lang/Object;
.source "UDPClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send(Ljava/net/DatagramSocket;Ljava/lang/String;ILcom/hisilicon/multiscreen/protocol/message/Request;)V
    .locals 6
    .param p0, "s"    # Ljava/net/DatagramSocket;
    .param p1, "remoteHostIp"    # Ljava/lang/String;
    .param p2, "ServicePort"    # I
    .param p3, "req"    # Lcom/hisilicon/multiscreen/protocol/message/Request;

    .prologue
    .line 32
    if-eqz p0, :cond_0

    .line 34
    move v3, p2

    .line 35
    .local v3, "server_port":I
    const/4 v1, 0x0

    .line 38
    .local v1, "local":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 39
    new-instance v2, Ljava/net/DatagramPacket;

    .line 40
    invoke-virtual {p3}, Lcom/hisilicon/multiscreen/protocol/message/Request;->getBytes()[B

    move-result-object v4

    invoke-virtual {p3}, Lcom/hisilicon/multiscreen/protocol/message/Request;->getHead()Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->getMsgLen()S

    move-result v5

    invoke-direct {v2, v4, v5, v1, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 42
    .local v2, "p":Ljava/net/DatagramPacket;
    invoke-virtual {p0, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    .end local v1    # "local":Ljava/net/InetAddress;
    .end local v2    # "p":Ljava/net/DatagramPacket;
    .end local v3    # "server_port":I
    :goto_0
    return-void

    .line 44
    .restart local v1    # "local":Ljava/net/InetAddress;
    .restart local v3    # "server_port":I
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "local":Ljava/net/InetAddress;
    .end local v3    # "server_port":I
    :cond_0
    const-string v4, "Socket is null!"

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
