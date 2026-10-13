.class public Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/LocalConnectionManagerService;
.super Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;
.source "LocalConnectionManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 9
    new-instance v0, Lorg/teleal/cling/support/model/ProtocolInfos;

    const/16 v1, 0x2a

    new-array v1, v1, [Lorg/teleal/cling/support/model/ProtocolInfo;

    const/4 v2, 0x0

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_LRG;DLNA.ORG_FLAGS=8cf00000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_MED;DLNA.ORG_FLAGS=8cf00000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_SM;DLNA.ORG_FLAGS=8cf00000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:audio/L16:DLNA.ORG_PN=LPCM;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/vnd.dlna.mpeg-tts:DLNA.ORG_PN=AVC_TS_HD_60_AC3_T;SONY.COM_PN=AVC_TS_HD_60_AC3_T;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/vnd.dlna.mpeg-tts:DLNA.ORG_PN=AVC_TS_HD_50_AC3_T;SONY.COM_PN=AVC_TS_HD_50_AC3_T;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/vnd.dlna.mpeg-tts:DLNA.ORG_PN=AVC_TS_HD_60_AC3;SONY.COM_PN=AVC_TS_HD_60_AC3;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/vnd.dlna.mpeg-tts:DLNA.ORG_PN=AVC_TS_HD_50_AC3;SONY.COM_PN=AVC_TS_HD_50_AC3;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/mpeg:DLNA.ORG_PN=AVC_TS_HD_60_AC3_ISO;SONY.COM_PN=AVC_TS_HD_60_AC3_ISO;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/mpeg:DLNA.ORG_PN=AVC_TS_HD_50_AC3_ISO;SONY.COM_PN=AVC_TS_HD_50_AC3_ISO;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/vnd.dlna.mpeg-tts:DLNA.ORG_PN=AVC_TS_HD_EU_T;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/vnd.dlna.mpeg-tts:DLNA.ORG_PN=AVC_TS_HD_EU;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/mpeg:DLNA.ORG_PN=AVC_TS_HD_EU_ISO;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/vnd.dlna.mpeg-tts:DLNA.ORG_PN=MPEG_TS_HD_NA_T;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/vnd.dlna.mpeg-tts:DLNA.ORG_PN=MPEG_TS_HD_KO_T;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/vnd.dlna.mpeg-tts:DLNA.ORG_PN=MPEG_TS_HD_NA;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/vnd.dlna.mpeg-tts:DLNA.ORG_PN=MPEG_TS_HD_KO;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/mpeg:DLNA.ORG_PN=MPEG_TS_HD_NA_ISO;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/mpeg:DLNA.ORG_PN=MPEG_TS_HD_KO_ISO;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/vnd.dlna.mpeg-tts:DLNA.ORG_PN=MPEG_TS_JP_T;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/vnd.dlna.mpeg-tts:DLNA.ORG_PN=MPEG_TS_HD_NA_MPEG1_L2_T;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/vnd.dlna.mpeg-tts:DLNA.ORG_PN=MPEG_TS_HD_60_L2_T;SONY.COM_PN=HD2_60_T;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/vnd.dlna.mpeg-tts:DLNA.ORG_PN=MPEG_TS_HD_50_L2_T;SONY.COM_PN=HD2_50_T;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/mpeg:DLNA.ORG_PN=MPEG_TS_HD_NA_MPEG1_L2_ISO;DLNA.ORG_FLAGS=8d700000000000000000000000000000"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/mpeg:DLNA.ORG_PN=MPEG_TS_HD_60_L2_ISO;SONY.COM_PN=HD2_60_ISO"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:image/jpeg:*"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:audio/mpeg:*"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:audio/L16:*"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:audio/x-ms-wma:*"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/mpeg:*"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/vnd.dlna.mpeg-tts:*"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x20

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/mp4:*"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x21

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/x-msvideo:*"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x22

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/x-divx:*"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x23

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/divx:*"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x24

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/avi:*"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x25

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/x-ms-wmv:*"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x26

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/x-ms-asf:*"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x27

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:video/*:*"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x28

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:audio/*:*"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x29

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v4, "http-get:*:image/*:*"

    invoke-direct {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/ProtocolInfos;-><init>([Lorg/teleal/cling/support/model/ProtocolInfo;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;-><init>(Lorg/teleal/cling/support/model/ProtocolInfos;Lorg/teleal/cling/support/model/ProtocolInfos;)V

    .line 72
    return-void
.end method
