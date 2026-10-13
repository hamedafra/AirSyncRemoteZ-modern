.class public Lorg/teleal/cling/model/meta/StateVariableEventDetails;
.super Ljava/lang/Object;
.source "StateVariableEventDetails.java"


# instance fields
.field private final eventMaximumRateMilliseconds:I

.field private final eventMinimumDelta:I

.field private final sendEvents:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;-><init>(ZII)V

    .line 33
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "sendEvents"    # Z

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0, v0}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;-><init>(ZII)V

    .line 37
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0
    .param p1, "sendEvents"    # Z
    .param p2, "eventMaximumRateMilliseconds"    # I
    .param p3, "eventMinimumDelta"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean p1, p0, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->sendEvents:Z

    .line 41
    iput p2, p0, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->eventMaximumRateMilliseconds:I

    .line 42
    iput p3, p0, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->eventMinimumDelta:I

    .line 43
    return-void
.end method


# virtual methods
.method public getEventMaximumRateMilliseconds()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->eventMaximumRateMilliseconds:I

    return v0
.end method

.method public getEventMinimumDelta()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->eventMinimumDelta:I

    return v0
.end method

.method public isSendEvents()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->sendEvents:Z

    return v0
.end method
