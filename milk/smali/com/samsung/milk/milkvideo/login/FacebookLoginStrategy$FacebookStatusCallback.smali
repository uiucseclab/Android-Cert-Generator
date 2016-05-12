.class Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$FacebookStatusCallback;
.super Ljava/lang/Object;
.source "FacebookLoginStrategy.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacebookStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$FacebookStatusCallback;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$1;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$FacebookStatusCallback;-><init>(Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy$FacebookStatusCallback;->this$0:Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/milk/milkvideo/login/FacebookLoginStrategy;->onFacebookSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 175
    return-void
.end method
