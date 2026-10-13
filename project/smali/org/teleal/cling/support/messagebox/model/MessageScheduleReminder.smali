.class public Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;
.super Lorg/teleal/cling/support/messagebox/model/Message;
.source "MessageScheduleReminder.java"


# instance fields
.field private final body:Ljava/lang/String;

.field private final endTime:Lorg/teleal/cling/support/messagebox/model/DateTime;

.field private final location:Ljava/lang/String;

.field private final owner:Lorg/teleal/cling/support/messagebox/model/NumberName;

.field private final startTime:Lorg/teleal/cling/support/messagebox/model/DateTime;

.field private final subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/messagebox/model/DateTime;Lorg/teleal/cling/support/messagebox/model/NumberName;Ljava/lang/String;Lorg/teleal/cling/support/messagebox/model/DateTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "startTime"    # Lorg/teleal/cling/support/messagebox/model/DateTime;
    .param p2, "owner"    # Lorg/teleal/cling/support/messagebox/model/NumberName;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "endTime"    # Lorg/teleal/cling/support/messagebox/model/DateTime;
    .param p5, "location"    # Ljava/lang/String;
    .param p6, "body"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v1, Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;->MAXIMUM:Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;-><init>(Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;Lorg/teleal/cling/support/messagebox/model/DateTime;Lorg/teleal/cling/support/messagebox/model/NumberName;Ljava/lang/String;Lorg/teleal/cling/support/messagebox/model/DateTime;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;Lorg/teleal/cling/support/messagebox/model/DateTime;Lorg/teleal/cling/support/messagebox/model/NumberName;Ljava/lang/String;Lorg/teleal/cling/support/messagebox/model/DateTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "displayType"    # Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;
    .param p2, "startTime"    # Lorg/teleal/cling/support/messagebox/model/DateTime;
    .param p3, "owner"    # Lorg/teleal/cling/support/messagebox/model/NumberName;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "endTime"    # Lorg/teleal/cling/support/messagebox/model/DateTime;
    .param p6, "location"    # Ljava/lang/String;
    .param p7, "body"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lorg/teleal/cling/support/messagebox/model/Message$Category;->SCHEDULE_REMINDER:Lorg/teleal/cling/support/messagebox/model/Message$Category;

    invoke-direct {p0, v0, p1}, Lorg/teleal/cling/support/messagebox/model/Message;-><init>(Lorg/teleal/cling/support/messagebox/model/Message$Category;Lorg/teleal/cling/support/messagebox/model/Message$DisplayType;)V

    .line 42
    iput-object p2, p0, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->startTime:Lorg/teleal/cling/support/messagebox/model/DateTime;

    .line 43
    iput-object p3, p0, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->owner:Lorg/teleal/cling/support/messagebox/model/NumberName;

    .line 44
    iput-object p4, p0, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->subject:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->endTime:Lorg/teleal/cling/support/messagebox/model/DateTime;

    .line 46
    iput-object p6, p0, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->location:Ljava/lang/String;

    .line 47
    iput-object p7, p0, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->body:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public appendMessageElements(Lorg/teleal/cling/support/messagebox/parser/MessageElement;)V
    .locals 2
    .param p1, "parent"    # Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->getStartTime()Lorg/teleal/cling/support/messagebox/model/DateTime;

    move-result-object v1

    const-string v0, "StartTime"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v1, v0}, Lorg/teleal/cling/support/messagebox/model/DateTime;->appendMessageElements(Lorg/teleal/cling/support/messagebox/parser/MessageElement;)V

    .line 76
    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->getOwner()Lorg/teleal/cling/support/messagebox/model/NumberName;

    move-result-object v1

    const-string v0, "Owner"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v1, v0}, Lorg/teleal/cling/support/messagebox/model/NumberName;->appendMessageElements(Lorg/teleal/cling/support/messagebox/parser/MessageElement;)V

    .line 77
    const-string v0, "Subject"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    .line 78
    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->getEndTime()Lorg/teleal/cling/support/messagebox/model/DateTime;

    move-result-object v1

    const-string v0, "EndTime"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v1, v0}, Lorg/teleal/cling/support/messagebox/model/DateTime;->appendMessageElements(Lorg/teleal/cling/support/messagebox/parser/MessageElement;)V

    .line 79
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    .line 80
    const-string v0, "Body"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/teleal/common/xml/DOMElement;

    .line 81
    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Lorg/teleal/cling/support/messagebox/model/DateTime;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->endTime:Lorg/teleal/cling/support/messagebox/model/DateTime;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lorg/teleal/cling/support/messagebox/model/NumberName;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->owner:Lorg/teleal/cling/support/messagebox/model/NumberName;

    return-object v0
.end method

.method public getStartTime()Lorg/teleal/cling/support/messagebox/model/DateTime;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->startTime:Lorg/teleal/cling/support/messagebox/model/DateTime;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/teleal/cling/support/messagebox/model/MessageScheduleReminder;->subject:Ljava/lang/String;

    return-object v0
.end method
