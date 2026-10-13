.class public Lorg/teleal/cling/support/messagebox/model/MessageIncomingCall;
.super Lorg/teleal/cling/support/messagebox/model/Message;
.source "MessageIncomingCall.java"


# instance fields
.field private final callTime:Lorg/teleal/cling/support/messagebox/model/DateTime;

.field private final callee:Lorg/teleal/cling/support/messagebox/model/NumberName;

.field private final caller:Lorg/teleal/cling/support/messagebox/model/NumberName;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/messagebox/model/DateTime;Lorg/teleal/cling/support/messagebox/model/NumberName;Lorg/teleal/cling/support/messagebox/model/NumberName;)V
    .locals 1
    .param p1, "callTime"    # Lorg/teleal/cling/support/messagebox/model/DateTime;
    .param p2, "callee"    # Lorg/teleal/cling/support/messagebox/model/NumberName;
    .param p3, "caller"    # Lorg/teleal/cling/support/messagebox/model/NumberName;

    .prologue
    .line 36
    sget-object v0, Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;->MAXIMUM:Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/teleal/cling/support/messagebox/model/MessageIncomingCall;-><init>(Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;Lorg/teleal/cling/support/messagebox/model/DateTime;Lorg/teleal/cling/support/messagebox/model/NumberName;Lorg/teleal/cling/support/messagebox/model/NumberName;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;Lorg/teleal/cling/support/messagebox/model/DateTime;Lorg/teleal/cling/support/messagebox/model/NumberName;Lorg/teleal/cling/support/messagebox/model/NumberName;)V
    .locals 1
    .param p1, "displayType"    # Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;
    .param p2, "callTime"    # Lorg/teleal/cling/support/messagebox/model/DateTime;
    .param p3, "callee"    # Lorg/teleal/cling/support/messagebox/model/NumberName;
    .param p4, "caller"    # Lorg/teleal/cling/support/messagebox/model/NumberName;

    .prologue
    .line 40
    sget-object v0, Lorg/teleal/cling/support/messagebox/model/Message$Category;->INCOMING_CALL:Lorg/teleal/cling/support/messagebox/model/Message$Category;

    invoke-direct {p0, v0, p1}, Lorg/teleal/cling/support/messagebox/model/Message;-><init>(Lorg/teleal/cling/support/messagebox/model/Message$Category;Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;)V

    .line 41
    iput-object p2, p0, Lorg/teleal/cling/support/messagebox/model/MessageIncomingCall;->callTime:Lorg/teleal/cling/support/messagebox/model/DateTime;

    .line 42
    iput-object p3, p0, Lorg/teleal/cling/support/messagebox/model/MessageIncomingCall;->callee:Lorg/teleal/cling/support/messagebox/model/NumberName;

    .line 43
    iput-object p4, p0, Lorg/teleal/cling/support/messagebox/model/MessageIncomingCall;->caller:Lorg/teleal/cling/support/messagebox/model/NumberName;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/messagebox/model/NumberName;Lorg/teleal/cling/support/messagebox/model/NumberName;)V
    .locals 1
    .param p1, "callee"    # Lorg/teleal/cling/support/messagebox/model/NumberName;
    .param p2, "caller"    # Lorg/teleal/cling/support/messagebox/model/NumberName;

    .prologue
    .line 32
    new-instance v0, Lorg/teleal/cling/support/messagebox/model/DateTime;

    invoke-direct {v0}, Lorg/teleal/cling/support/messagebox/model/DateTime;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/teleal/cling/support/messagebox/model/MessageIncomingCall;-><init>(Lorg/teleal/cling/support/messagebox/model/DateTime;Lorg/teleal/cling/support/messagebox/model/NumberName;Lorg/teleal/cling/support/messagebox/model/NumberName;)V

    .line 33
    return-void
.end method


# virtual methods
.method public appendMessageElements(Lorg/teleal/cling/support/messagebox/parser/MessageElement;)V
    .locals 2
    .param p1, "parent"    # Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/MessageIncomingCall;->getCallTime()Lorg/teleal/cling/support/messagebox/model/DateTime;

    move-result-object v1

    const-string v0, "CallTime"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v1, v0}, Lorg/teleal/cling/support/messagebox/model/DateTime;->appendMessageElements(Lorg/teleal/cling/support/messagebox/parser/MessageElement;)V

    .line 60
    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/MessageIncomingCall;->getCallee()Lorg/teleal/cling/support/messagebox/model/NumberName;

    move-result-object v1

    const-string v0, "Callee"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v1, v0}, Lorg/teleal/cling/support/messagebox/model/NumberName;->appendMessageElements(Lorg/teleal/cling/support/messagebox/parser/MessageElement;)V

    .line 61
    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/MessageIncomingCall;->getCaller()Lorg/teleal/cling/support/messagebox/model/NumberName;

    move-result-object v1

    const-string v0, "Caller"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v1, v0}, Lorg/teleal/cling/support/messagebox/model/NumberName;->appendMessageElements(Lorg/teleal/cling/support/messagebox/parser/MessageElement;)V

    .line 62
    return-void
.end method

.method public getCallTime()Lorg/teleal/cling/support/messagebox/model/DateTime;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/MessageIncomingCall;->callTime:Lorg/teleal/cling/support/messagebox/model/DateTime;

    return-object v0
.end method

.method public getCallee()Lorg/teleal/cling/support/messagebox/model/NumberName;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/MessageIncomingCall;->callee:Lorg/teleal/cling/support/messagebox/model/NumberName;

    return-object v0
.end method

.method public getCaller()Lorg/teleal/cling/support/messagebox/model/NumberName;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/MessageIncomingCall;->caller:Lorg/teleal/cling/support/messagebox/model/NumberName;

    return-object v0
.end method
