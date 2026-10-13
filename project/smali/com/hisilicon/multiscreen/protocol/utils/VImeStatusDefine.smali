.class public Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine;
.super Ljava/lang/Object;
.source "VImeStatusDefine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    }
.end annotation


# static fields
.field private static final DEINIT_STATUS_VIME_CLIENT:I = 0x5

.field private static final INIT_STATUS_VIME_CLIENT:I = 0x1

.field private static final INPUT_STATUS_VIME_CLIENT:I = 0x4

.field private static final READY_STATUS_VIME_CLIENT:I = 0x3

.field private static final SETUP_STATUS_VIME_CLIENT:I = 0x2

.field private static final VIME_SERVER_STATUS_DEINIT:I = 0x53

.field private static final VIME_SERVER_STATUS_INIT:I = 0x50

.field private static final VIME_SERVER_STATUS_INPUT:I = 0x52

.field private static final VIME_SERVER_STATUS_READY:I = 0x51


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
