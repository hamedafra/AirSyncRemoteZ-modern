.class public Lorg/teleal/cling/support/messagebox/model/MessageSMS;
.super Lorg/teleal/cling/support/messagebox/model/Message;
.source "MessageSMS.java"


# instance fields
.field private final body:Ljava/lang/String;

.field private final receiveTime:Lorg/teleal/cling/support/messagebox/model/DateTime;

.field private final receiver:Lorg/teleal/cling/support/messagebox/model/NumberName;

.field private final sender:Lorg/teleal/cling/support/messagebox/model/NumberName;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/messagebox/model/DateTime;Lorg/teleal/cling/support/messagebox/model/NumberName;Lorg/teleal/cling/support/messagebox/model/NumberName;Ljava/lang/String;)V
    .locals 6
    .param p1, "receiveTime"    # Lorg/teleal/cling/support/messagebox/model/DateTime;
    .param p2, "receiver"    # Lorg/teleal/cling/support/messagebox/model/NumberName;
    .param p3, "sender"    # Lorg/teleal/cling/support/messagebox/model/NumberName;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v1, Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;->MAXIMUM:Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/messagebox/model/MessageSMS;-><init>(Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;Lorg/teleal/cling/support/messagebox/model/DateTime;Lorg/teleal/cling/support/messagebox/model/NumberName;Lorg/teleal/cling/support/messagebox/model/NumberName;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;Lorg/teleal/cling/support/messagebox/model/DateTime;Lorg/teleal/cling/support/messagebox/model/NumberName;Lorg/teleal/cling/support/messagebox/model/NumberName;Ljava/lang/String;)V
    .locals 1
    .param p1, "displayType"    # Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;
    .param p2, "receiveTime"    # Lorg/teleal/cling/support/messagebox/model/DateTime;
    .param p3, "receiver"    # Lorg/teleal/cling/support/messagebox/model/NumberName;
    .param p4, "sender"    # Lorg/teleal/cling/support/messagebox/model/NumberName;
    .param p5, "body"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Lorg/teleal/cling/support/messagebox/model/Message$Category;->SMS:Lorg/teleal/cling/support/messagebox/model/Message$Category;

    invoke-direct {p0, v0, p1}, Lorg/teleal/cling/support/messagebox/model/Message;-><init>(Lorg/teleal/cling/support/messagebox/model/Message$Category;Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;)V

    .line 44
    iput-object p2, p0, Lorg/teleal/cling/support/messagebox/model/MessageSMS;->receiveTime:Lorg/teleal/cling/support/messagebox/model/DateTime;

    .line 45
    iput-object p3, p0, Lorg/teleal/cling/support/messagebox/model/MessageSMS;->receiver:Lorg/teleal/cling/support/messagebox/model/NumberName;

    .line 46
    iput-object p4, p0, Lorg/teleal/cling/support/messagebox/model/MessageSMS;->sender:Lorg/teleal/cling/support/messagebox/model/NumberName;

    .line 47
    iput-object p5, p0, Lorg/teleal/cling/support/messagebox/model/MessageSMS;->body:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/messagebox/model/NumberName;Lorg/teleal/cling/support/messagebox/model/NumberName;Ljava/lang/String;)V
    .locals 1
    .param p1, "receiver"    # Lorg/teleal/cling/support/messagebox/model/NumberName;
    .param p2, "sender"    # Lorg/teleal/cling/support/messagebox/model/NumberName;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Lorg/teleal/cling/support/messagebox/model/DateTime;

    invoke-direct {v0}, Lorg/teleal/cling/support/messagebox/model/DateTime;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/teleal/cling/support/messagebox/model/MessageSMS;-><init>(Lorg/teleal/cling/support/messagebox/model/DateTime;Lorg/teleal/cling/support/messagebox/model/NumberName;Lorg/teleal/cling/support/messagebox/model/NumberName;Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public appendMessageElements(Lorg/teleal/cling/support/messagebox/parser/MessageElement;)V
    .locals 2
    .param p1, "parent"    # Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/MessageSMS;->getReceiveTime()Lorg/teleal/cling/support/messagebox/model/DateTime;

    move-result-object v1

    const-string v0, "ReceiveTime"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v1, v0}, Lorg/teleal/cling/support/messagebox/model/DateTime;->appendMessageElements(Lorg/teleal/cling/support/messagebox/parser/MessageElement;)V

    .line 68
    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/MessageSMS;->getReceiver()Lorg/teleal/cling/support/messagebox/model/NumberName;

    move-result-object v1

    const-string v0, "Receiver"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v1, v0}, Lorg/teleal/cling/support/messagebox/model/NumberName;->appendMessageElements(Lorg/teleal/cling/support/messagebox/parser/MessageElement;)V

    .line 69
    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/MessageSMS;->getSender()Lorg/teleal/cling/support/messagebox/model/NumberName;

    move-result-object v1

    const-string v0, "Sender"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v1, v0}, Lorg/teleal/cling/support/messagebox/model/NumberName;->appendMessageElements(Lorg/teleal/cling/support/messagebox/parser/MessageElement;)V

    .line 70
    const-string v0, "Body"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/MessageSMS;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    .line 71
    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/MessageSMS;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiveTime()Lorg/teleal/cling/support/messagebox/model/DateTime;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/MessageSMS;->receiveTime:Lorg/teleal/cling/support/messagebox/model/DateTime;

    return-object v0
.end method

.method public getReceiver()Lorg/teleal/cling/support/messagebox/model/NumberName;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/MessageSMS;->receiver:Lorg/teleal/cling/support/messagebox/model/NumberName;

    return-object v0
.end method

.method public getSender()Lorg/teleal/cling/support/messagebox/model/NumberName;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/MessageSMS;->sender:Lorg/teleal/cling/support/messagebox/model/NumberName;

    return-object v0
.end method
