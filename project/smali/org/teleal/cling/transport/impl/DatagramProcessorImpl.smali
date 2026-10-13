.class public Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;
.super Ljava/lang/Object;
.source "DatagramProcessorImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/DatagramProcessor;


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/teleal/cling/transport/spi/DatagramProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/net/InetAddress;Ljava/net/DatagramPacket;)Lorg/teleal/cling/model/message/IncomingDatagramMessage;
    .locals 9
    .param p1, "receivedOnAddress"    # Ljava/net/InetAddress;
    .param p2, "datagram"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/UnsupportedDataException;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    sget-object v0, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "===================================== DATAGRAM BEGIN ============================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "-===================================== DATAGRAM END ============================================="

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 57
    :cond_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 59
    .local v3, "is":Ljava/io/ByteArrayInputStream;
    invoke-static {v3}, Lorg/teleal/common/http/Headers;->readLine(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "startLine":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, v8, v0

    const-string v1, "HTTP/1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x2

    aget-object v5, v8, v0

    const/4 v0, 0x0

    aget-object v6, v8, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;->readResponseMessage(Ljava/net/InetAddress;Ljava/net/DatagramPacket;Ljava/io/ByteArrayInputStream;ILjava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    aget-object v4, v8, v0

    const/4 v0, 0x2

    aget-object v5, v8, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;->readRequestMessage(Ljava/net/InetAddress;Ljava/net/DatagramPacket;Ljava/io/ByteArrayInputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/model/message/IncomingDatagramMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 66
    .end local v3    # "is":Ljava/io/ByteArrayInputStream;
    .end local v8    # "startLine":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 67
    .local v7, "ex":Ljava/lang/Exception;
    new-instance v0, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse headers: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected readRequestMessage(Ljava/net/InetAddress;Ljava/net/DatagramPacket;Ljava/io/ByteArrayInputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/model/message/IncomingDatagramMessage;
    .locals 5
    .param p1, "receivedOnAddress"    # Ljava/net/InetAddress;
    .param p2, "datagram"    # Ljava/net/DatagramPacket;
    .param p3, "is"    # Ljava/io/ByteArrayInputStream;
    .param p4, "requestMethod"    # Ljava/lang/String;
    .param p5, "httpProtocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-direct {v0, p3}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>(Ljava/io/ByteArrayInputStream;)V

    .line 131
    .local v0, "headers":Lorg/teleal/cling/model/message/UpnpHeaders;
    new-instance v2, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-static {p4}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->getByHttpName(Ljava/lang/String;)Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;)V

    .line 132
    .local v2, "upnpRequest":Lorg/teleal/cling/model/message/UpnpRequest;
    invoke-virtual {p5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HTTP/1.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lorg/teleal/cling/model/message/UpnpRequest;->setHttpMinorVersion(I)V

    .line 133
    new-instance v1, Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, p1}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Ljava/net/InetAddress;ILjava/net/InetAddress;)V

    .line 135
    .local v1, "requestMessage":Lorg/teleal/cling/model/message/IncomingDatagramMessage;
    invoke-virtual {v1, v0}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->setHeaders(Lorg/teleal/cling/model/message/UpnpHeaders;)V

    .line 137
    return-object v1

    .line 132
    .end local v1    # "requestMessage":Lorg/teleal/cling/model/message/IncomingDatagramMessage;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected readResponseMessage(Ljava/net/InetAddress;Ljava/net/DatagramPacket;Ljava/io/ByteArrayInputStream;ILjava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/model/message/IncomingDatagramMessage;
    .locals 5
    .param p1, "receivedOnAddress"    # Ljava/net/InetAddress;
    .param p2, "datagram"    # Ljava/net/DatagramPacket;
    .param p3, "is"    # Ljava/io/ByteArrayInputStream;
    .param p4, "statusCode"    # I
    .param p5, "statusMessage"    # Ljava/lang/String;
    .param p6, "httpProtocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-direct {v0, p3}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>(Ljava/io/ByteArrayInputStream;)V

    .line 152
    .local v0, "headers":Lorg/teleal/cling/model/message/UpnpHeaders;
    new-instance v2, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-direct {v2, p4, p5}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(ILjava/lang/String;)V

    .line 153
    .local v2, "upnpResponse":Lorg/teleal/cling/model/message/UpnpResponse;
    invoke-virtual {p6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HTTP/1.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lorg/teleal/cling/model/message/UpnpResponse;->setHttpMinorVersion(I)V

    .line 154
    new-instance v1, Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, p1}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Ljava/net/InetAddress;ILjava/net/InetAddress;)V

    .line 156
    .local v1, "responseMessage":Lorg/teleal/cling/model/message/IncomingDatagramMessage;
    invoke-virtual {v1, v0}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->setHeaders(Lorg/teleal/cling/model/message/UpnpHeaders;)V

    .line 158
    return-object v1

    .line 153
    .end local v1    # "responseMessage":Lorg/teleal/cling/model/message/IncomingDatagramMessage;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public write(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)Ljava/net/DatagramPacket;
    .locals 11
    .param p1, "message"    # Lorg/teleal/cling/model/message/OutgoingDatagramMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/UnsupportedDataException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v6, "statusLine":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v3

    .line 77
    .local v3, "operation":Lorg/teleal/cling/model/message/UpnpOperation;
    instance-of v7, v3, Lorg/teleal/cling/model/message/UpnpRequest;

    if-eqz v7, :cond_1

    move-object v4, v3

    .line 79
    check-cast v4, Lorg/teleal/cling/model/message/UpnpRequest;

    .line 80
    .local v4, "requestOperation":Lorg/teleal/cling/model/message/UpnpRequest;
    invoke-virtual {v4}, Lorg/teleal/cling/model/message/UpnpRequest;->getHttpMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " * "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v7, "HTTP/1."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/teleal/cling/model/message/UpnpOperation;->getHttpMinorVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .end local v4    # "requestOperation":Lorg/teleal/cling/model/message/UpnpRequest;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v2, "messageData":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v7

    invoke-virtual {v7}, Lorg/teleal/cling/model/message/UpnpHeaders;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    sget-object v7, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 101
    sget-object v7, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Writing message data for: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 102
    sget-object v7, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v8, "---------------------------------------------------------------------------------"

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 103
    sget-object v7, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 104
    sget-object v7, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    const-string v8, "---------------------------------------------------------------------------------"

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 110
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "US-ASCII"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 112
    .local v0, "data":[B
    sget-object v7, Lorg/teleal/cling/transport/impl/DatagramProcessorImpl;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Writing new datagram packet with "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 113
    new-instance v7, Ljava/net/DatagramPacket;

    array-length v8, v0

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;->getDestinationAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;->getDestinationPort()I

    move-result v10

    invoke-direct {v7, v0, v8, v9, v10}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 83
    .end local v0    # "data":[B
    .end local v2    # "messageData":Ljava/lang/StringBuilder;
    :cond_1
    instance-of v7, v3, Lorg/teleal/cling/model/message/UpnpResponse;

    if-eqz v7, :cond_2

    move-object v5, v3

    .line 84
    check-cast v5, Lorg/teleal/cling/model/message/UpnpResponse;

    .line 85
    .local v5, "responseOperation":Lorg/teleal/cling/model/message/UpnpResponse;
    const-string v7, "HTTP/1."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/teleal/cling/model/message/UpnpOperation;->getHttpMinorVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v5}, Lorg/teleal/cling/model/message/UpnpResponse;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lorg/teleal/cling/model/message/UpnpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 89
    .end local v5    # "responseOperation":Lorg/teleal/cling/model/message/UpnpResponse;
    :cond_2
    new-instance v7, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    .line 90
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Message operation is not request or response, don\'t know how to process: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 89
    invoke-direct {v7, v8}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 115
    .restart local v2    # "messageData":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Can\'t convert message content to US-ASCII: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method
