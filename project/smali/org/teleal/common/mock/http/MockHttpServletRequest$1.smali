.class Lorg/teleal/common/mock/http/MockHttpServletRequest$1;
.super Ljava/lang/Object;
.source "MockHttpServletRequest.java"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/common/mock/http/MockHttpServletRequest;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Ljava/util/Set;[Ljavax/servlet/http/Cookie;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/common/mock/http/MockHttpServletRequest;

.field final synthetic val$principalName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/teleal/common/mock/http/MockHttpServletRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest$1;->this$0:Lorg/teleal/common/mock/http/MockHttpServletRequest;

    iput-object p2, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest$1;->val$principalName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest$1;->val$principalName:Ljava/lang/String;

    return-object v0
.end method
