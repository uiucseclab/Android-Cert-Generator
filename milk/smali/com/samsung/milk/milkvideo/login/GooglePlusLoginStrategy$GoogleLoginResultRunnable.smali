.class Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;
.super Ljava/lang/Object;
.source "GooglePlusLoginStrategy.java"

# interfaces
.implements Lcom/samsung/milk/milkvideo/runnables/GoogleLoginResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoogleLoginResultRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$1;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;-><init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V

    return-void
.end method


# virtual methods
.method public runOnUiThread(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 209
    if-nez p1, :cond_0

    .line 210
    const-string v1, "null token from Google Plus, fast fail"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    # invokes: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->resetGoogleLogin()V
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$200(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V

    .line 252
    :goto_0
    return-void

    .line 215
    :cond_0
    new-instance v0, Lcom/samsung/milk/milkvideo/api/GooglePlusAuthenticationRequest;

    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/api/GooglePlusAuthenticationRequest;-><init>()V

    .line 216
    .local v0, "request":Lcom/samsung/milk/milkvideo/api/GooglePlusAuthenticationRequest;
    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/api/GooglePlusAuthenticationRequest;->setGooglePlusAccessToken(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    # getter for: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->messageNotifier:Lcom/samsung/milk/milkvideo/views/MessageNotifier;
    invoke-static {v1}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$600(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)Lcom/samsung/milk/milkvideo/views/MessageNotifier;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/views/MessageNotifier;->showNextNotification(Z)V

    .line 219
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    iget-object v1, v1, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v2, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable$1;-><init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$GoogleLoginResultRunnable;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->signInWithGooglePlus(Lcom/samsung/milk/milkvideo/api/GooglePlusAuthenticationRequest;Lretrofit/Callback;)V

    goto :goto_0
.end method
